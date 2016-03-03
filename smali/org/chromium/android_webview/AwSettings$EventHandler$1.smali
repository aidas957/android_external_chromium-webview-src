.class Lorg/chromium/android_webview/AwSettings$EventHandler$1;
.super Landroid/os/Handler;
.source "AwSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/android_webview/AwSettings$EventHandler;->bindUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/android_webview/AwSettings$EventHandler;


# direct methods
.method constructor <init>(Lorg/chromium/android_webview/AwSettings$EventHandler;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 155
    iput-object p1, p0, Lorg/chromium/android_webview/AwSettings$EventHandler$1;->this$1:Lorg/chromium/android_webview/AwSettings$EventHandler;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 158
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings$EventHandler$1;->this$1:Lorg/chromium/android_webview/AwSettings$EventHandler;

    iget-object v0, v0, Lorg/chromium/android_webview/AwSettings$EventHandler;->this$0:Lorg/chromium/android_webview/AwSettings;

    # getter for: Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/chromium/android_webview/AwSettings;->access$100(Lorg/chromium/android_webview/AwSettings;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings$EventHandler$1;->this$1:Lorg/chromium/android_webview/AwSettings$EventHandler;

    iget-object v0, v0, Lorg/chromium/android_webview/AwSettings$EventHandler;->this$0:Lorg/chromium/android_webview/AwSettings;

    # getter for: Lorg/chromium/android_webview/AwSettings;->mNativeAwSettings:J
    invoke-static {v0}, Lorg/chromium/android_webview/AwSettings;->access$200(Lorg/chromium/android_webview/AwSettings;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings$EventHandler$1;->this$1:Lorg/chromium/android_webview/AwSettings$EventHandler;

    const/4 v2, 0x0

    # setter for: Lorg/chromium/android_webview/AwSettings$EventHandler;->mSynchronizationPending:Z
    invoke-static {v0, v2}, Lorg/chromium/android_webview/AwSettings$EventHandler;->access$302(Lorg/chromium/android_webview/AwSettings$EventHandler;Z)Z

    .line 165
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings$EventHandler$1;->this$1:Lorg/chromium/android_webview/AwSettings$EventHandler;

    iget-object v0, v0, Lorg/chromium/android_webview/AwSettings$EventHandler;->this$0:Lorg/chromium/android_webview/AwSettings;

    # getter for: Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/chromium/android_webview/AwSettings;->access$100(Lorg/chromium/android_webview/AwSettings;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 166
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
