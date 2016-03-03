.class Lwebview/chromium/WebViewContentsClientAdapter$2;
.super Ljava/lang/Object;
.source "WebViewContentsClientAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwebview/chromium/WebViewContentsClientAdapter;->onPageFinished(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwebview/chromium/WebViewContentsClientAdapter;


# direct methods
.method constructor <init>(Lwebview/chromium/WebViewContentsClientAdapter;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lwebview/chromium/WebViewContentsClientAdapter$2;->this$0:Lwebview/chromium/WebViewContentsClientAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 527
    invoke-static {}, Lwebview/chromium/UnimplementedWebViewApi;->invoke()V

    .line 528
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter$2;->this$0:Lwebview/chromium/WebViewContentsClientAdapter;

    # getter for: Lwebview/chromium/WebViewContentsClientAdapter;->mPictureListener:Landroid/webkit/WebView$PictureListener;
    invoke-static {v0}, Lwebview/chromium/WebViewContentsClientAdapter;->access$100(Lwebview/chromium/WebViewContentsClientAdapter;)Landroid/webkit/WebView$PictureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lwebview/chromium/WebViewContentsClientAdapter$2;->this$0:Lwebview/chromium/WebViewContentsClientAdapter;

    # getter for: Lwebview/chromium/WebViewContentsClientAdapter;->mPictureListener:Landroid/webkit/WebView$PictureListener;
    invoke-static {v0}, Lwebview/chromium/WebViewContentsClientAdapter;->access$100(Lwebview/chromium/WebViewContentsClientAdapter;)Landroid/webkit/WebView$PictureListener;

    move-result-object v0

    iget-object v1, p0, Lwebview/chromium/WebViewContentsClientAdapter$2;->this$0:Lwebview/chromium/WebViewContentsClientAdapter;

    # getter for: Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lwebview/chromium/WebViewContentsClientAdapter;->access$000(Lwebview/chromium/WebViewContentsClientAdapter;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Landroid/graphics/Picture;

    invoke-direct {v2}, Landroid/graphics/Picture;-><init>()V

    invoke-interface {v0, v1, v2}, Landroid/webkit/WebView$PictureListener;->onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V

    .line 532
    :cond_0
    return-void
.end method
