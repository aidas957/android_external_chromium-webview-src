.class Lwebview/chromium/WebViewChromiumFactoryProvider$3;
.super Ljava/lang/Object;
.source "WebViewChromiumFactoryProvider.java"

# interfaces
.implements Landroid/webkit/WebViewFactoryProvider$Statics;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwebview/chromium/WebViewChromiumFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwebview/chromium/WebViewChromiumFactoryProvider;


# direct methods
.method constructor <init>(Lwebview/chromium/WebViewChromiumFactoryProvider;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lwebview/chromium/WebViewChromiumFactoryProvider$3;->this$0:Lwebview/chromium/WebViewChromiumFactoryProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearClientCertPreferences(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onCleared"    # Ljava/lang/Runnable;

    .prologue
    .line 374
    invoke-static {p1}, Lorg/chromium/android_webview/AwContentsStatics;->clearClientCertPreferences(Ljava/lang/Runnable;)V

    .line 375
    return-void
.end method

.method public enableSlowWholeDocumentDraw()V
    .locals 0

    .prologue
    .line 387
    invoke-static {}, Lwebview/chromium/WebViewChromium;->enableSlowWholeDocumentDraw()V

    .line 388
    return-void
.end method

.method public findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 354
    invoke-static {p1}, Lorg/chromium/content/browser/ContentViewStatics;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public freeMemoryForTests()V
    .locals 1

    .prologue
    .line 379
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const/16 v0, 0x50

    invoke-static {v0}, Lorg/chromium/base/MemoryPressureListener;->maybeNotifyMemoryPresure(I)V

    .line 383
    :cond_0
    return-void
.end method

.method public getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 359
    invoke-static {}, Lorg/chromium/android_webview/AwSettings;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parseFileChooserResult(ILandroid/content/Intent;)[Landroid/net/Uri;
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 392
    invoke-static {p1, p2}, Lwebview/chromium/FileChooserParamsAdapter;->parseFileChooserResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public setWebContentsDebuggingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 365
    # invokes: Lwebview/chromium/WebViewChromiumFactoryProvider;->isBuildDebuggable()Z
    invoke-static {}, Lwebview/chromium/WebViewChromiumFactoryProvider;->access$200()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lwebview/chromium/WebViewChromiumFactoryProvider$3;->this$0:Lwebview/chromium/WebViewChromiumFactoryProvider;

    # invokes: Lwebview/chromium/WebViewChromiumFactoryProvider;->setWebContentsDebuggingEnabled(Z)V
    invoke-static {v0, p1}, Lwebview/chromium/WebViewChromiumFactoryProvider;->access$300(Lwebview/chromium/WebViewChromiumFactoryProvider;Z)V

    .line 369
    :cond_0
    return-void
.end method
