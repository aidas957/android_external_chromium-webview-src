.class Lorg/chromium/android_webview/AwSettings$EventHandler;
.super Ljava/lang/Object;
.source "AwSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/android_webview/AwSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSynchronizationPending:Z

.field final synthetic this$0:Lorg/chromium/android_webview/AwSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    const-class v0, Lorg/chromium/android_webview/AwSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/android_webview/AwSettings$EventHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/android_webview/AwSettings;)V
    .locals 1

    .prologue
    .line 150
    iput-object p1, p0, Lorg/chromium/android_webview/AwSettings$EventHandler;->this$0:Lorg/chromium/android_webview/AwSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/android_webview/AwSettings$EventHandler;->mSynchronizationPending:Z

    .line 151
    return-void
.end method

.method static synthetic access$1200(Lorg/chromium/android_webview/AwSettings$EventHandler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/chromium/android_webview/AwSettings$EventHandler;

    .prologue
    .line 142
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings$EventHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lorg/chromium/android_webview/AwSettings$EventHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/chromium/android_webview/AwSettings$EventHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lorg/chromium/android_webview/AwSettings$EventHandler;->mSynchronizationPending:Z

    return p1
.end method


# virtual methods
.method bindUiThread()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings$EventHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 155
    :cond_0
    new-instance v0, Lorg/chromium/android_webview/AwSettings$EventHandler$1;

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/chromium/android_webview/AwSettings$EventHandler$1;-><init>(Lorg/chromium/android_webview/AwSettings$EventHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/chromium/android_webview/AwSettings$EventHandler;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method maybePostOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 194
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings$EventHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lorg/chromium/android_webview/AwSettings$EventHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 197
    :cond_0
    return-void
.end method

.method runOnUiThreadBlockingAndLocked(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x0

    .line 174
    sget-boolean v1, Lorg/chromium/android_webview/AwSettings$EventHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings$EventHandler;->this$0:Lorg/chromium/android_webview/AwSettings;

    # getter for: Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;
    invoke-static {v1}, Lorg/chromium/android_webview/AwSettings;->access$100(Lorg/chromium/android_webview/AwSettings;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 175
    :cond_0
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings$EventHandler;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 191
    :cond_1
    :goto_0
    return-void

    .line 176
    :cond_2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->runningOnUiThread()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 177
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 179
    :cond_3
    sget-boolean v1, Lorg/chromium/android_webview/AwSettings$EventHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lorg/chromium/android_webview/AwSettings$EventHandler;->mSynchronizationPending:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 180
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/chromium/android_webview/AwSettings$EventHandler;->mSynchronizationPending:Z

    .line 181
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings$EventHandler;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 183
    :goto_1
    :try_start_0
    iget-boolean v1, p0, Lorg/chromium/android_webview/AwSettings$EventHandler;->mSynchronizationPending:Z

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lorg/chromium/android_webview/AwSettings$EventHandler;->this$0:Lorg/chromium/android_webview/AwSettings;

    # getter for: Lorg/chromium/android_webview/AwSettings;->mAwSettingsLock:Ljava/lang/Object;
    invoke-static {v1}, Lorg/chromium/android_webview/AwSettings;->access$100(Lorg/chromium/android_webview/AwSettings;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "AwSettings"

    const-string v2, "Interrupted waiting a Runnable to complete"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    iput-boolean v3, p0, Lorg/chromium/android_webview/AwSettings$EventHandler;->mSynchronizationPending:Z

    goto :goto_0
.end method

.method updateWebkitPreferencesLocked()V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lorg/chromium/android_webview/AwSettings$EventHandler$2;

    invoke-direct {v0, p0}, Lorg/chromium/android_webview/AwSettings$EventHandler$2;-><init>(Lorg/chromium/android_webview/AwSettings$EventHandler;)V

    invoke-virtual {p0, v0}, Lorg/chromium/android_webview/AwSettings$EventHandler;->runOnUiThreadBlockingAndLocked(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method
