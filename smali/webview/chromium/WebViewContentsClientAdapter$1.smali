.class Lwebview/chromium/WebViewContentsClientAdapter$1;
.super Landroid/os/Handler;
.source "WebViewContentsClientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwebview/chromium/WebViewContentsClientAdapter;-><init>(Landroid/webkit/WebView;Landroid/content/Context;Lwebview/chromium/WebViewDelegateFactory$WebViewDelegate;)V
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
    .line 143
    iput-object p1, p0, Lwebview/chromium/WebViewContentsClientAdapter$1;->this$0:Lwebview/chromium/WebViewContentsClientAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 147
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 166
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 149
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebView$WebViewTransport;

    .line 150
    .local v1, "t":Landroid/webkit/WebView$WebViewTransport;
    invoke-virtual {v1}, Landroid/webkit/WebView$WebViewTransport;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 151
    .local v0, "newWebView":Landroid/webkit/WebView;
    iget-object v2, p0, Lwebview/chromium/WebViewContentsClientAdapter$1;->this$0:Lwebview/chromium/WebViewContentsClientAdapter;

    # getter for: Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Lwebview/chromium/WebViewContentsClientAdapter;->access$000(Lwebview/chromium/WebViewContentsClientAdapter;)Landroid/webkit/WebView;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 152
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parent WebView cannot host it\'s own popup window. Please use WebSettings.setSupportMultipleWindows(false)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "New WebView for popup window must not have been previously navigated."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    :cond_1
    iget-object v2, p0, Lwebview/chromium/WebViewContentsClientAdapter$1;->this$0:Lwebview/chromium/WebViewContentsClientAdapter;

    # getter for: Lwebview/chromium/WebViewContentsClientAdapter;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Lwebview/chromium/WebViewContentsClientAdapter;->access$000(Lwebview/chromium/WebViewContentsClientAdapter;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-static {v2, v0}, Lwebview/chromium/WebViewChromium;->completeWindowCreation(Landroid/webkit/WebView;Landroid/webkit/WebView;)V

    .line 168
    return-void

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
