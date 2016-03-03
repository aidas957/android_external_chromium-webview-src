.class public Lcom/android/org/chromium/android_webview/FullScreenView;
.super Landroid/widget/FrameLayout;
.source "FullScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/android_webview/FullScreenView$1;,
        Lcom/android/org/chromium/android_webview/FullScreenView$InternalAccessAdapter;
    }
.end annotation


# instance fields
.field private final mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

.field private mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

.field private mInternalAccessAdapter:Lcom/android/org/chromium/android_webview/FullScreenView$InternalAccessAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/org/chromium/android_webview/AwViewMethods;Lcom/android/org/chromium/android_webview/AwContents;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "awViewMethods"    # Lcom/android/org/chromium/android_webview/AwViewMethods;
    .param p3, "awContents"    # Lcom/android/org/chromium/android_webview/AwContents;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/android/org/chromium/android_webview/FullScreenView;->setAwViewMethods(Lcom/android/org/chromium/android_webview/AwViewMethods;)V

    .line 33
    iput-object p3, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    .line 34
    new-instance v0, Lcom/android/org/chromium/android_webview/FullScreenView$InternalAccessAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/chromium/android_webview/FullScreenView$InternalAccessAdapter;-><init>(Lcom/android/org/chromium/android_webview/FullScreenView;Lcom/android/org/chromium/android_webview/FullScreenView$1;)V

    iput-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mInternalAccessAdapter:Lcom/android/org/chromium/android_webview/FullScreenView$InternalAccessAdapter;

    .line 35
    return-void
.end method

.method static synthetic access$1000(Lcom/android/org/chromium/android_webview/FullScreenView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/FullScreenView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/android/org/chromium/android_webview/FullScreenView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$101(Lcom/android/org/chromium/android_webview/FullScreenView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/FullScreenView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/KeyEvent;

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$301(Lcom/android/org/chromium/android_webview/FullScreenView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/FullScreenView;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$401(Lcom/android/org/chromium/android_webview/FullScreenView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/FullScreenView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$501(Lcom/android/org/chromium/android_webview/FullScreenView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/FullScreenView;

    .prologue
    .line 23
    invoke-super {p0}, Landroid/view/View;->getScrollBarStyle()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/org/chromium/android_webview/FullScreenView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/FullScreenView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 23
    invoke-virtual/range {p0 .. p9}, Lcom/android/org/chromium/android_webview/FullScreenView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$901(Lcom/android/org/chromium/android_webview/FullScreenView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/org/chromium/android_webview/FullScreenView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method


# virtual methods
.method public computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwViewMethods;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwViewMethods;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwViewMethods;->computeScroll()V

    .line 191
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwViewMethods;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwViewMethods;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwViewMethods;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 79
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwContents:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-virtual {v1}, Lcom/android/org/chromium/android_webview/AwContents;->requestExitFullscreen()V

    .line 85
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1}, Lcom/android/org/chromium/android_webview/AwViewMethods;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getInternalAccessAdapter()Lcom/android/org/chromium/android_webview/FullScreenView$InternalAccessAdapter;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mInternalAccessAdapter:Lcom/android/org/chromium/android_webview/FullScreenView$InternalAccessAdapter;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 111
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwViewMethods;->onAttachedToWindow()V

    .line 112
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1}, Lcom/android/org/chromium/android_webview/AwViewMethods;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 106
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1}, Lcom/android/org/chromium/android_webview/AwViewMethods;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 117
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwViewMethods;->onDetachedFromWindow()V

    .line 118
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1}, Lcom/android/org/chromium/android_webview/AwViewMethods;->onDraw(Landroid/graphics/Canvas;)V

    .line 48
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 129
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 130
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/chromium/android_webview/AwViewMethods;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 132
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1}, Lcom/android/org/chromium/android_webview/AwViewMethods;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1}, Lcom/android/org/chromium/android_webview/AwViewMethods;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1, p2}, Lcom/android/org/chromium/android_webview/AwViewMethods;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1, p2}, Lcom/android/org/chromium/android_webview/AwViewMethods;->onMeasure(II)V

    .line 53
    return-void
.end method

.method public onOverScrolled(IIZZ)V
    .locals 1
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/org/chromium/android_webview/AwViewMethods;->onContainerViewOverScrolled(IIZZ)V

    .line 155
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 160
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/org/chromium/android_webview/AwViewMethods;->onContainerViewScrollChanged(IIII)V

    .line 161
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "ow"    # I
    .param p4, "oh"    # I

    .prologue
    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 137
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/org/chromium/android_webview/AwViewMethods;->onSizeChanged(IIII)V

    .line 138
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1}, Lcom/android/org/chromium/android_webview/AwViewMethods;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 143
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1, p2}, Lcom/android/org/chromium/android_webview/AwViewMethods;->onVisibilityChanged(Landroid/view/View;I)V

    .line 144
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1}, Lcom/android/org/chromium/android_webview/AwViewMethods;->onWindowFocusChanged(Z)V

    .line 124
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 149
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1}, Lcom/android/org/chromium/android_webview/AwViewMethods;->onWindowVisibilityChanged(I)V

    .line 150
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwViewMethods;->requestFocus()V

    .line 58
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setAwViewMethods(Lcom/android/org/chromium/android_webview/AwViewMethods;)V
    .locals 0
    .param p1, "awViewMethods"    # Lcom/android/org/chromium/android_webview/AwViewMethods;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    .line 43
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 64
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/FullScreenView;->mAwViewMethods:Lcom/android/org/chromium/android_webview/AwViewMethods;

    invoke-interface {v0, p1, p2}, Lcom/android/org/chromium/android_webview/AwViewMethods;->setLayerType(ILandroid/graphics/Paint;)V

    .line 65
    return-void
.end method
