#include <QGuiApplication>
#include <QQmlContext>
#include <QQuickView>

int main(int argc, char *argv[])
{
    QGuiApplication application(argc, argv);
    QQuickView quickView;
    QUrl urlAssetsPath;

    #if defined(Q_OS_IOS)
        urlAssetsPath = QUrl("file://" + qApp->applicationDirPath() + "/");
    #elif defined(Q_OS_ANDROID)
        urlAssetsPath = QUrl("assets:/Resources/");
    #endif

    quickView.rootContext()->setContextProperty("assetsPath", urlAssetsPath);
    quickView.setSource(QUrl("qrc:/main.qml"));
    quickView.setResizeMode(QQuickView::SizeRootObjectToView);

    #if defined(Q_OS_IOS)
        quickView.showFullScreen();
    #else
        quickView.show();
    #endif

    return application.exec();
}
