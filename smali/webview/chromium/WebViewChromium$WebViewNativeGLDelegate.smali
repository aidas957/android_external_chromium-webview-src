.class Lwebview/chromium/WebViewChromium$WebViewNativeGLDelegate;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Lorg/chromium/android_webview/AwContents$NativeGLDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwebview/chromium/WebViewChromium;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewNativeGLDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lwebview/chromium/WebViewChromium;


# direct methods
.method private constructor <init>(Lwebview/chromium/WebViewChromium;)V
    .locals 0

    .prologue
    .line 2128
    iput-object p1, p0, Lwebview/chromium/WebViewChromium$WebViewNativeGLDelegate;->this$0:Lwebview/chromium/WebViewChromium;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lwebview/chromium/WebViewChromium;Lwebview/chromium/WebViewChromium$1;)V
    .locals 0
    .param p1, "x0"    # Lwebview/chromium/WebViewChromium;
    .param p2, "x1"    # Lwebview/chromium/WebViewChromium$1;

    .prologue
    .line 2128
    invoke-direct {p0, p1}, Lwebview/chromium/WebViewChromium$WebViewNativeGLDelegate;-><init>(Lwebview/chromium/WebViewChromium;)V

    return-void
.end method


# virtual methods
.method public detachGLFunctor()V
    .locals 1

    .prologue
    .line 2141
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$WebViewNativeGLDelegate;->this$0:Lwebview/chromium/WebViewChromium;

    # getter for: Lwebview/chromium/WebViewChromium;->mGLfunctor:Lwebview/chromium/DrawGLFunctor;
    invoke-static {v0}, Lwebview/chromium/WebViewChromium;->access$500(Lwebview/chromium/WebViewChromium;)Lwebview/chromium/DrawGLFunctor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2142
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$WebViewNativeGLDelegate;->this$0:Lwebview/chromium/WebViewChromium;

    # getter for: Lwebview/chromium/WebViewChromium;->mGLfunctor:Lwebview/chromium/DrawGLFunctor;
    invoke-static {v0}, Lwebview/chromium/WebViewChromium;->access$500(Lwebview/chromium/WebViewChromium;)Lwebview/chromium/DrawGLFunctor;

    move-result-object v0

    invoke-virtual {v0}, Lwebview/chromium/DrawGLFunctor;->detach()V

    .line 2144
    :cond_0
    return-void
.end method

.method public requestDrawGL(Landroid/graphics/Canvas;ZLandroid/view/View;)Z
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "waitForCompletion"    # Z
    .param p3, "containerView"    # Landroid/view/View;

    .prologue
    .line 2132
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$WebViewNativeGLDelegate;->this$0:Lwebview/chromium/WebViewChromium;

    # getter for: Lwebview/chromium/WebViewChromium;->mGLfunctor:Lwebview/chromium/DrawGLFunctor;
    invoke-static {v0}, Lwebview/chromium/WebViewChromium;->access$500(Lwebview/chromium/WebViewChromium;)Lwebview/chromium/DrawGLFunctor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2133
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$WebViewNativeGLDelegate;->this$0:Lwebview/chromium/WebViewChromium;

    new-instance v1, Lwebview/chromium/DrawGLFunctor;

    iget-object v2, p0, Lwebview/chromium/WebViewChromium$WebViewNativeGLDelegate;->this$0:Lwebview/chromium/WebViewChromium;

    # getter for: Lwebview/chromium/WebViewChromium;->mAwContents:Lorg/chromium/android_webview/AwContents;
    invoke-static {v2}, Lwebview/chromium/WebViewChromium;->access$400(Lwebview/chromium/WebViewChromium;)Lorg/chromium/android_webview/AwContents;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/android_webview/AwContents;->getAwDrawGLViewContext()J

    move-result-wide v2

    iget-object v4, p0, Lwebview/chromium/WebViewChromium$WebViewNativeGLDelegate;->this$0:Lwebview/chromium/WebViewChromium;

    # getter for: Lwebview/chromium/WebViewChromium;->mFactory:Lwebview/chromium/WebViewChromiumFactoryProvider;
    invoke-static {v4}, Lwebview/chromium/WebViewChromium;->access$000(Lwebview/chromium/WebViewChromium;)Lwebview/chromium/WebViewChromiumFactoryProvider;

    move-result-object v4

    invoke-virtual {v4}, Lwebview/chromium/WebViewChromiumFactoryProvider;->getWebViewDelegate()Lwebview/chromium/WebViewDelegateFactory$WebViewDelegate;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lwebview/chromium/DrawGLFunctor;-><init>(JLwebview/chromium/WebViewDelegateFactory$WebViewDelegate;)V

    # setter for: Lwebview/chromium/WebViewChromium;->mGLfunctor:Lwebview/chromium/DrawGLFunctor;
    invoke-static {v0, v1}, Lwebview/chromium/WebViewChromium;->access$502(Lwebview/chromium/WebViewChromium;Lwebview/chromium/DrawGLFunctor;)Lwebview/chromium/DrawGLFunctor;

    .line 2136
    :cond_0
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$WebViewNativeGLDelegate;->this$0:Lwebview/chromium/WebViewChromium;

    # getter for: Lwebview/chromium/WebViewChromium;->mGLfunctor:Lwebview/chromium/DrawGLFunctor;
    invoke-static {v0}, Lwebview/chromium/WebViewChromium;->access$500(Lwebview/chromium/WebViewChromium;)Lwebview/chromium/DrawGLFunctor;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lwebview/chromium/DrawGLFunctor;->requestDrawGL(Landroid/graphics/Canvas;Landroid/view/View;Z)Z

    move-result v0

    return v0
.end method
