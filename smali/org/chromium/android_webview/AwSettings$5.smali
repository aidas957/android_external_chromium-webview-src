.class Lorg/chromium/android_webview/AwSettings$5;
.super Ljava/lang/Object;
.source "AwSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/android_webview/AwSettings;->onGestureZoomSupportChanged(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/android_webview/AwSettings;

.field final synthetic val$supportsDoubleTapZoom:Z

.field final synthetic val$supportsMultiTouchZoom:Z


# direct methods
.method constructor <init>(Lorg/chromium/android_webview/AwSettings;ZZ)V
    .locals 0

    .prologue
    .line 1467
    iput-object p1, p0, Lorg/chromium/android_webview/AwSettings$5;->this$0:Lorg/chromium/android_webview/AwSettings;

    iput-boolean p2, p0, Lorg/chromium/android_webview/AwSettings$5;->val$supportsDoubleTapZoom:Z

    iput-boolean p3, p0, Lorg/chromium/android_webview/AwSettings$5;->val$supportsMultiTouchZoom:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1470
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings$5;->this$0:Lorg/chromium/android_webview/AwSettings;

    # getter for: Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/chromium/android_webview/AwSettings;->access$100(Lorg/chromium/android_webview/AwSettings;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1471
    :try_start_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings$5;->this$0:Lorg/chromium/android_webview/AwSettings;

    # getter for: Lorg/chromium/android_webview/AwSettings;->mZoomChangeListener:Lorg/chromium/android_webview/AwSettings$ZoomSupportChangeListener;
    invoke-static {v0}, Lorg/chromium/android_webview/AwSettings;->access$1000(Lorg/chromium/android_webview/AwSettings;)Lorg/chromium/android_webview/AwSettings$ZoomSupportChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1472
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings$5;->this$0:Lorg/chromium/android_webview/AwSettings;

    # getter for: Lorg/chromium/android_webview/AwSettings;->mZoomChangeListener:Lorg/chromium/android_webview/AwSettings$ZoomSupportChangeListener;
    invoke-static {v0}, Lorg/chromium/android_webview/AwSettings;->access$1000(Lorg/chromium/android_webview/AwSettings;)Lorg/chromium/android_webview/AwSettings$ZoomSupportChangeListener;

    move-result-object v0

    iget-boolean v2, p0, Lorg/chromium/android_webview/AwSettings$5;->val$supportsDoubleTapZoom:Z

    iget-boolean v3, p0, Lorg/chromium/android_webview/AwSettings$5;->val$supportsMultiTouchZoom:Z

    invoke-interface {v0, v2, v3}, Lorg/chromium/android_webview/AwSettings$ZoomSupportChangeListener;->onGestureZoomSupportChanged(ZZ)V

    .line 1475
    :cond_0
    monitor-exit v1

    .line 1476
    return-void

    .line 1475
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
