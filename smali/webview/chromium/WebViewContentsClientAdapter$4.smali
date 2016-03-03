.class Lwebview/chromium/WebViewContentsClientAdapter$4;
.super Ljava/lang/Object;
.source "WebViewContentsClientAdapter.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwebview/chromium/WebViewContentsClientAdapter;->showFileChooser(Landroid/webkit/ValueCallback;Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<[",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private mCompleted:Z

.field final synthetic this$0:Lwebview/chromium/WebViewContentsClientAdapter;

.field final synthetic val$uploadFileCallback:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Lwebview/chromium/WebViewContentsClientAdapter;Landroid/webkit/ValueCallback;)V
    .locals 0

    .prologue
    .line 904
    iput-object p1, p0, Lwebview/chromium/WebViewContentsClientAdapter$4;->this$0:Lwebview/chromium/WebViewContentsClientAdapter;

    iput-object p2, p0, Lwebview/chromium/WebViewContentsClientAdapter$4;->val$uploadFileCallback:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 904
    check-cast p1, [Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lwebview/chromium/WebViewContentsClientAdapter$4;->onReceiveValue([Landroid/net/Uri;)V

    return-void
.end method

.method public onReceiveValue([Landroid/net/Uri;)V
    .locals 4
    .param p1, "uriList"    # [Landroid/net/Uri;

    .prologue
    .line 908
    iget-boolean v2, p0, Lwebview/chromium/WebViewContentsClientAdapter$4;->mCompleted:Z

    if-eqz v2, :cond_0

    .line 909
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "showFileChooser result was already called"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 911
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lwebview/chromium/WebViewContentsClientAdapter$4;->mCompleted:Z

    .line 912
    const/4 v1, 0x0

    .line 913
    .local v1, "s":[Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 914
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 915
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 916
    aget-object v2, p1, v0

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 915
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 919
    .end local v0    # "i":I
    :cond_1
    iget-object v2, p0, Lwebview/chromium/WebViewContentsClientAdapter$4;->val$uploadFileCallback:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 920
    return-void
.end method
