.class Lorg/chromium/android_webview/NullAwViewMethods;
.super Ljava/lang/Object;
.source "NullAwViewMethods.java"

# interfaces
.implements Lorg/chromium/android_webview/AwViewMethods;


# instance fields
.field private mAwContents:Lorg/chromium/android_webview/AwContents;

.field private mContainerView:Landroid/view/View;

.field private mInternalAccessAdapter:Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;


# direct methods
.method public constructor <init>(Lorg/chromium/android_webview/AwContents;Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;Landroid/view/View;)V
    .locals 0
    .param p1, "awContents"    # Lorg/chromium/android_webview/AwContents;
    .param p2, "internalAccessAdapter"    # Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;
    .param p3, "containerView"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/chromium/android_webview/NullAwViewMethods;->mAwContents:Lorg/chromium/android_webview/AwContents;

    .line 33
    iput-object p2, p0, Lorg/chromium/android_webview/NullAwViewMethods;->mInternalAccessAdapter:Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;

    .line 34
    iput-object p3, p0, Lorg/chromium/android_webview/NullAwViewMethods;->mContainerView:Landroid/view/View;

    .line 35
    return-void
.end method


# virtual methods
.method public computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 94
    return-void
.end method

.method public onContainerViewOverScrolled(IIZZ)V
    .locals 0
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 140
    return-void
.end method

.method public onContainerViewScrollChanged(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 134
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/android_webview/NullAwViewMethods;->mAwContents:Lorg/chromium/android_webview/AwContents;

    invoke-virtual {v0}, Lorg/chromium/android_webview/AwContents;->getEffectiveBackgroundColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 40
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 114
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/android_webview/NullAwViewMethods;->mInternalAccessAdapter:Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;

    iget-object v1, p0, Lorg/chromium/android_webview/NullAwViewMethods;->mContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/android_webview/NullAwViewMethods;->mContainerView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lorg/chromium/android_webview/AwContents$InternalAccessDelegate;->setMeasuredDimension(II)V

    .line 49
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "ow"    # I
    .param p4, "oh"    # I

    .prologue
    .line 119
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 124
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 109
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 129
    return-void
.end method

.method public requestFocus()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 59
    return-void
.end method
