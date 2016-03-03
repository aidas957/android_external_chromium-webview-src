.class Lcom/android/webview/chromium/WebViewContentsClientAdapter$5;
.super Ljava/lang/Object;
.source "WebViewContentsClientAdapter.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewContentsClientAdapter;->showFileChooser(Landroid/webkit/ValueCallback;Lcom/android/org/chromium/android_webview/AwContentsClient$FileChooserParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private mCompleted:Z

.field final synthetic this$0:Lcom/android/webview/chromium/WebViewContentsClientAdapter;

.field final synthetic val$uploadFileCallback:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewContentsClientAdapter;Landroid/webkit/ValueCallback;)V
    .locals 0

    .prologue
    .line 939
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$5;->this$0:Lcom/android/webview/chromium/WebViewContentsClientAdapter;

    iput-object p2, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$5;->val$uploadFileCallback:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    .line 943
    iget-boolean v0, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$5;->mCompleted:Z

    if-eqz v0, :cond_0

    .line 944
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "showFileChooser result was already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 946
    :cond_0
    iput-boolean v2, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$5;->mCompleted:Z

    .line 947
    iget-object v1, p0, Lcom/android/webview/chromium/WebViewContentsClientAdapter$5;->val$uploadFileCallback:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 949
    return-void

    .line 947
    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    goto :goto_0
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 939
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/webview/chromium/WebViewContentsClientAdapter$5;->onReceiveValue(Landroid/net/Uri;)V

    return-void
.end method
