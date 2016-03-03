.class Lcom/android/webview/chromium/WebViewChromium$WebViewNativeGLDelegate;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Lcom/android/org/chromium/android_webview/AwContents$NativeGLDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/webview/chromium/WebViewChromium;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewNativeGLDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebViewChromium;


# direct methods
.method private constructor <init>(Lcom/android/webview/chromium/WebViewChromium;)V
    .locals 0

    .prologue
    .line 2128
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium$WebViewNativeGLDelegate;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/webview/chromium/WebViewChromium;Lcom/android/webview/chromium/WebViewChromium$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/webview/chromium/WebViewChromium;
    .param p2, "x1"    # Lcom/android/webview/chromium/WebViewChromium$1;

    .prologue
    .line 2128
    invoke-direct {p0, p1}, Lcom/android/webview/chromium/WebViewChromium$WebViewNativeGLDelegate;-><init>(Lcom/android/webview/chromium/WebViewChromium;)V

    return-void
.end method


# virtual methods
.method public detachGLFunctor()V
    .locals 1

    .prologue
    .line 2141
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$WebViewNativeGLDelegate;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    # getter for: Lcom/android/webview/chromium/WebViewChromium;->mGLfunctor:Lcom/android/webview/chromium/DrawGLFunctor;
    invoke-static {v0}, Lcom/android/webview/chromium/WebViewChromium;->access$500(Lcom/android/webview/chromium/WebViewChromium;)Lcom/android/webview/chromium/DrawGLFunctor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2142
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$WebViewNativeGLDelegate;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    # getter for: Lcom/android/webview/chromium/WebViewChromium;->mGLfunctor:Lcom/android/webview/chromium/DrawGLFunctor;
    invoke-static {v0}, Lcom/android/webview/chromium/WebViewChromium;->access$500(Lcom/android/webview/chromium/WebViewChromium;)Lcom/android/webview/chromium/DrawGLFunctor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/webview/chromium/DrawGLFunctor;->detach()V

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
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$WebViewNativeGLDelegate;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    # getter for: Lcom/android/webview/chromium/WebViewChromium;->mGLfunctor:Lcom/android/webview/chromium/DrawGLFunctor;
    invoke-static {v0}, Lcom/android/webview/chromium/WebViewChromium;->access$500(Lcom/android/webview/chromium/WebViewChromium;)Lcom/android/webview/chromium/DrawGLFunctor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2133
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$WebViewNativeGLDelegate;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    new-instance v1, Lcom/android/webview/chromium/DrawGLFunctor;

    iget-object v2, p0, Lcom/android/webview/chromium/WebViewChromium$WebViewNativeGLDelegate;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    # getter for: Lcom/android/webview/chromium/WebViewChromium;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;
    invoke-static {v2}, Lcom/android/webview/chromium/WebViewChromium;->access$400(Lcom/android/webview/chromium/WebViewChromium;)Lcom/android/org/chromium/android_webview/AwContents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/chromium/android_webview/AwContents;->getAwDrawGLViewContext()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/webview/chromium/WebViewChromium$WebViewNativeGLDelegate;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    # getter for: Lcom/android/webview/chromium/WebViewChromium;->mFactory:Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;
    invoke-static {v4}, Lcom/android/webview/chromium/WebViewChromium;->access$000(Lcom/android/webview/chromium/WebViewChromium;)Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/webview/chromium/WebViewChromiumFactoryProvider;->getWebViewDelegate()Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/webview/chromium/DrawGLFunctor;-><init>(JLcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;)V

    # setter for: Lcom/android/webview/chromium/WebViewChromium;->mGLfunctor:Lcom/android/webview/chromium/DrawGLFunctor;
    invoke-static {v0, v1}, Lcom/android/webview/chromium/WebViewChromium;->access$502(Lcom/android/webview/chromium/WebViewChromium;Lcom/android/webview/chromium/DrawGLFunctor;)Lcom/android/webview/chromium/DrawGLFunctor;

    .line 2136
    :cond_0
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$WebViewNativeGLDelegate;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    # getter for: Lcom/android/webview/chromium/WebViewChromium;->mGLfunctor:Lcom/android/webview/chromium/DrawGLFunctor;
    invoke-static {v0}, Lcom/android/webview/chromium/WebViewChromium;->access$500(Lcom/android/webview/chromium/WebViewChromium;)Lcom/android/webview/chromium/DrawGLFunctor;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/webview/chromium/DrawGLFunctor;->requestDrawGL(Landroid/graphics/Canvas;Landroid/view/View;Z)Z

    move-result v0

    return v0
.end method
