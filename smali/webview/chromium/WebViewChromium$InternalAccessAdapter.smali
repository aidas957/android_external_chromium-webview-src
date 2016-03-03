.class Lwebview/chromium/WebViewChromium$InternalAccessAdapter;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwebview/chromium/WebViewChromium;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalAccessAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lwebview/chromium/WebViewChromium;


# direct methods
.method private constructor <init>(Lwebview/chromium/WebViewChromium;)V
    .locals 0

    .prologue
    .line 2148
    iput-object p1, p0, Lwebview/chromium/WebViewChromium$InternalAccessAdapter;->this$0:Lwebview/chromium/WebViewChromium;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lwebview/chromium/WebViewChromium;Lwebview/chromium/WebViewChromium$1;)V
    .locals 0
    .param p1, "x0"    # Lwebview/chromium/WebViewChromium;
    .param p2, "x1"    # Lwebview/chromium/WebViewChromium$1;

    .prologue
    .line 2148
    invoke-direct {p0, p1}, Lwebview/chromium/WebViewChromium$InternalAccessAdapter;-><init>(Lwebview/chromium/WebViewChromium;)V

    return-void
.end method


# virtual methods
.method public onScrollChanged(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 2206
    return-void
.end method

.method public overScrollBy(IIIIIIIIZ)V
    .locals 10
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    .line 2214
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$InternalAccessAdapter;->this$0:Lwebview/chromium/WebViewChromium;

    iget-object v0, v0, Lwebview/chromium/WebViewChromium;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebView$PrivateAccess;->overScrollBy(IIIIIIIIZ)V

    .line 2216
    return-void
.end method

.method public setMeasuredDimension(II)V
    .locals 1
    .param p1, "measuredWidth"    # I
    .param p2, "measuredHeight"    # I

    .prologue
    .line 2225
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$InternalAccessAdapter;->this$0:Lwebview/chromium/WebViewChromium;

    iget-object v0, v0, Lwebview/chromium/WebViewChromium;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView$PrivateAccess;->setMeasuredDimension(II)V

    .line 2226
    return-void
.end method

.method public super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2169
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$InternalAccessAdapter;->this$0:Lwebview/chromium/WebViewChromium;

    iget-object v0, v0, Lwebview/chromium/WebViewChromium;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView$PrivateAccess;->super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public super_getScrollBarStyle()I
    .locals 1

    .prologue
    .line 2184
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$InternalAccessAdapter;->this$0:Lwebview/chromium/WebViewChromium;

    iget-object v0, v0, Lwebview/chromium/WebViewChromium;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v0}, Landroid/webkit/WebView$PrivateAccess;->super_getScrollBarStyle()I

    move-result v0

    return v0
.end method

.method public super_onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    .line 2180
    return-void
.end method

.method public super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 2174
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$InternalAccessAdapter;->this$0:Lwebview/chromium/WebViewChromium;

    iget-object v0, v0, Lwebview/chromium/WebViewChromium;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView$PrivateAccess;->super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/view/KeyEvent;

    .prologue
    .line 2158
    const/4 v0, 0x0

    return v0
.end method

.method public super_scrollTo(II)V
    .locals 1
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I

    .prologue
    .line 2220
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$InternalAccessAdapter;->this$0:Lwebview/chromium/WebViewChromium;

    iget-object v0, v0, Lwebview/chromium/WebViewChromium;->mWebViewPrivate:Landroid/webkit/WebView$PrivateAccess;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView$PrivateAccess;->super_scrollTo(II)V

    .line 2221
    return-void
.end method
