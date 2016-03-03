.class Lcom/android/webview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;
.super Ljava/lang/Object;
.source "WebViewContentsClientAdapter.java"

# interfaces
.implements Landroid/webkit/JsResult$ResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/webview/chromium/WebViewContentsClientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JsPromptResultReceiverAdapter"
.end annotation


# instance fields
.field private mChromePromptResultReceiver:Lcom/android/org/chromium/android_webview/JsPromptResultReceiver;

.field private mChromeResultReceiver:Lcom/android/org/chromium/android_webview/JsResultReceiver;

.field private final mPromptResult:Landroid/webkit/JsPromptResult;


# direct methods
.method public constructor <init>(Lcom/android/org/chromium/android_webview/JsPromptResultReceiver;)V
    .locals 1
    .param p1, "receiver"    # Lcom/android/org/chromium/android_webview/JsPromptResultReceiver;

    .prologue
    .line 665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    new-instance v0, Landroid/webkit/JsPromptResult;

    invoke-direct {v0, p0}, Landroid/webkit/JsPromptResult;-><init>(Landroid/webkit/JsResult$ResultReceiver;)V

    iput-object v0, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;->mPromptResult:Landroid/webkit/JsPromptResult;

    .line 666
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;->mChromePromptResultReceiver:Lcom/android/org/chromium/android_webview/JsPromptResultReceiver;

    .line 667
    return-void
.end method

.method public constructor <init>(Lcom/android/org/chromium/android_webview/JsResultReceiver;)V
    .locals 1
    .param p1, "receiver"    # Lcom/android/org/chromium/android_webview/JsResultReceiver;

    .prologue
    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    new-instance v0, Landroid/webkit/JsPromptResult;

    invoke-direct {v0, p0}, Landroid/webkit/JsPromptResult;-><init>(Landroid/webkit/JsResult$ResultReceiver;)V

    iput-object v0, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;->mPromptResult:Landroid/webkit/JsPromptResult;

    .line 670
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;->mChromeResultReceiver:Lcom/android/org/chromium/android_webview/JsResultReceiver;

    .line 671
    return-void
.end method


# virtual methods
.method public getPromptResult()Landroid/webkit/JsPromptResult;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;->mPromptResult:Landroid/webkit/JsPromptResult;

    return-object v0
.end method

.method public onJsResultComplete(Landroid/webkit/JsResult;)V
    .locals 2
    .param p1, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;->mChromePromptResultReceiver:Lcom/android/org/chromium/android_webview/JsPromptResultReceiver;

    if-eqz v0, :cond_1

    .line 680
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;->mPromptResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->getResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;->mChromePromptResultReceiver:Lcom/android/org/chromium/android_webview/JsPromptResultReceiver;

    iget-object v1, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;->mPromptResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {v1}, Landroid/webkit/JsPromptResult;->getStringResult()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/org/chromium/android_webview/JsPromptResultReceiver;->confirm(Ljava/lang/String;)V

    .line 692
    :goto_0
    return-void

    .line 683
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;->mChromePromptResultReceiver:Lcom/android/org/chromium/android_webview/JsPromptResultReceiver;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/JsPromptResultReceiver;->cancel()V

    goto :goto_0

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;->mPromptResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->getResult()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 687
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;->mChromeResultReceiver:Lcom/android/org/chromium/android_webview/JsResultReceiver;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/JsResultReceiver;->confirm()V

    goto :goto_0

    .line 689
    :cond_2
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$JsPromptResultReceiverAdapter;->mChromeResultReceiver:Lcom/android/org/chromium/android_webview/JsResultReceiver;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/JsResultReceiver;->cancel()V

    goto :goto_0
.end method
