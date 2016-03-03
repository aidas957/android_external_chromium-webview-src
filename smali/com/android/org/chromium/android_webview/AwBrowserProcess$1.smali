.class final Lcom/android/org/chromium/android_webview/AwBrowserProcess$1;
.super Ljava/lang/Object;
.source "AwBrowserProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/android_webview/AwBrowserProcess;->start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwBrowserProcess$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwBrowserProcess$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/org/chromium/content/browser/BrowserStartupController;->get(Landroid/content/Context;)Lcom/android/org/chromium/content/browser/BrowserStartupController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/org/chromium/content/browser/BrowserStartupController;->startBrowserProcessesSync(Z)V

    .line 60
    # invokes: Lcom/android/org/chromium/android_webview/AwBrowserProcess;->initializePlatformKeySystem()V
    invoke-static {}, Lcom/android/org/chromium/android_webview/AwBrowserProcess;->access$000()V
    :try_end_0
    .catch Lcom/android/org/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Lcom/android/org/chromium/base/library_loader/ProcessInitException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot initialize WebView"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
