.class Lorg/chromium/android_webview/FullScreenView$InternalAccessAdapter;
.super Ljava/lang/Object;
.source "FullScreenView.java"

# interfaces
.implements Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/android_webview/FullScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalAccessAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/android_webview/FullScreenView;


# direct methods
.method private constructor <init>(Lorg/chromium/android_webview/FullScreenView;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lorg/chromium/android_webview/FullScreenView$InternalAccessAdapter;->this$0:Lorg/chromium/android_webview/FullScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/android_webview/FullScreenView;Lorg/chromium/android_webview/FullScreenView$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/android_webview/FullScreenView;
    .param p2, "x1"    # Lorg/chromium/android_webview/FullScreenView$1;

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lorg/chromium/android_webview/FullScreenView$InternalAccessAdapter;-><init>(Lorg/chromium/android_webview/FullScreenView;)V

    return-void
.end method


# virtual methods
.method public onScrollChanged(IIII)V
    .locals 1
    .param p1, "lPix"    # I
    .param p2, "tPix"    # I
    .param p3, "oldlPix"    # I
    .param p4, "oldtPix"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lorg/chromium/android_webview/FullScreenView$InternalAccessAdapter;->this$0:Lorg/chromium/android_webview/FullScreenView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/android_webview/FullScreenView;->onScrollChanged(IIII)V

    .line 245
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
    .line 251
    iget-object v0, p0, Lorg/chromium/android_webview/FullScreenView$InternalAccessAdapter;->this$0:Lorg/chromium/android_webview/FullScreenView;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    # invokes: Lorg/chromium/android_webview/FullScreenView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v0 .. v9}, Lorg/chromium/android_webview/FullScreenView;->access$800(Lorg/chromium/android_webview/FullScreenView;IIIIIIIIZ)Z

    .line 253
    return-void
.end method

.method public setMeasuredDimension(II)V
    .locals 1
    .param p1, "measuredWidth"    # I
    .param p2, "measuredHeight"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lorg/chromium/android_webview/FullScreenView$InternalAccessAdapter;->this$0:Lorg/chromium/android_webview/FullScreenView;

    # invokes: Lorg/chromium/android_webview/FullScreenView;->setMeasuredDimension(II)V
    invoke-static {v0, p1, p2}, Lorg/chromium/android_webview/FullScreenView;->access$1000(Lorg/chromium/android_webview/FullScreenView;II)V

    .line 263
    return-void
.end method

.method public super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 214
    iget-object v0, p0, Lorg/chromium/android_webview/FullScreenView$InternalAccessAdapter;->this$0:Lorg/chromium/android_webview/FullScreenView;

    # invokes: Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    invoke-static {v0, p1}, Lorg/chromium/android_webview/FullScreenView;->access$301(Lorg/chromium/android_webview/FullScreenView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public super_getScrollBarStyle()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lorg/chromium/android_webview/FullScreenView$InternalAccessAdapter;->this$0:Lorg/chromium/android_webview/FullScreenView;

    # invokes: Landroid/view/View;->getScrollBarStyle()I
    invoke-static {v0}, Lorg/chromium/android_webview/FullScreenView;->access$501(Lorg/chromium/android_webview/FullScreenView;)I

    move-result v0

    return v0
.end method

.method public super_onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 225
    return-void
.end method

.method public super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 219
    iget-object v0, p0, Lorg/chromium/android_webview/FullScreenView$InternalAccessAdapter;->this$0:Lorg/chromium/android_webview/FullScreenView;

    # invokes: Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Lorg/chromium/android_webview/FullScreenView;->access$401(Lorg/chromium/android_webview/FullScreenView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 204
    iget-object v0, p0, Lorg/chromium/android_webview/FullScreenView$InternalAccessAdapter;->this$0:Lorg/chromium/android_webview/FullScreenView;

    # invokes: Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z
    invoke-static {v0, p1, p2}, Lorg/chromium/android_webview/FullScreenView;->access$101(Lorg/chromium/android_webview/FullScreenView;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public super_scrollTo(II)V
    .locals 1
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lorg/chromium/android_webview/FullScreenView$InternalAccessAdapter;->this$0:Lorg/chromium/android_webview/FullScreenView;

    # invokes: Landroid/view/View;->scrollTo(II)V
    invoke-static {v0, p1, p2}, Lorg/chromium/android_webview/FullScreenView;->access$901(Lorg/chromium/android_webview/FullScreenView;II)V

    .line 258
    return-void
.end method
