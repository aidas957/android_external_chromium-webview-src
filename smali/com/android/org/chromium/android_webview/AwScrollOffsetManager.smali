.class public Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;
.super Ljava/lang/Object;
.source "AwScrollOffsetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mApplyDeferredNativeScroll:Z

.field private mContainerViewHeight:I

.field private mContainerViewWidth:I

.field private mDeferredNativeScrollX:I

.field private mDeferredNativeScrollY:I

.field private final mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

.field private mMaxHorizontalScrollOffset:I

.field private mMaxVerticalScrollOffset:I

.field private mNativeScrollX:I

.field private mNativeScrollY:I

.field private mProcessingTouchEvent:Z

.field private mScroller:Landroid/widget/OverScroller;

.field private mWasFlinging:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;Landroid/widget/OverScroller;)V
    .locals 0
    .param p1, "delegate"    # Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;
    .param p2, "overScroller"    # Landroid/widget/OverScroller;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    .line 81
    iput-object p2, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mScroller:Landroid/widget/OverScroller;

    .line 82
    return-void
.end method

.method private animateScrollTo(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->getContainerViewScrollX()I

    move-result v1

    .line 317
    .local v1, "scrollX":I
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->getContainerViewScrollY()I

    move-result v2

    .line 319
    .local v2, "scrollY":I
    invoke-direct {p0, p1}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->clampHorizontalScroll(I)I

    move-result p1

    .line 320
    invoke-direct {p0, p2}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->clampVerticalScroll(I)I

    move-result p2

    .line 322
    sub-int v3, p1, v1

    .line 323
    .local v3, "dx":I
    sub-int v4, p2, v2

    .line 325
    .local v4, "dy":I
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    .line 326
    const/4 v0, 0x0

    .line 331
    :goto_0
    return v0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mScroller:Landroid/widget/OverScroller;

    invoke-static {v3, v4}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->computeDurationInMilliSec(II)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 329
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->invalidate()V

    .line 331
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private clampHorizontalScroll(I)I
    .locals 1
    .param p1, "scrollX"    # I

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 198
    invoke-virtual {p0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->computeMaximumHorizontalScrollOffset()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 199
    return p1
.end method

.method private clampVerticalScroll(I)I
    .locals 1
    .param p1, "scrollY"    # I

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 204
    invoke-virtual {p0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->computeMaximumVerticalScrollOffset()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 205
    return p1
.end method

.method private static computeDurationInMilliSec(II)I
    .locals 4
    .param p0, "dx"    # I
    .param p1, "dy"    # I

    .prologue
    .line 310
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 311
    .local v0, "distance":I
    mul-int/lit16 v2, v0, 0x3e8

    div-int/lit16 v1, v2, 0x1e0

    .line 312
    .local v1, "duration":I
    const/16 v2, 0x2ee

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private scrollBy(II)V
    .locals 8
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    .line 183
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 194
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->getContainerViewScrollX()I

    move-result v3

    .line 186
    .local v3, "scrollX":I
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->getContainerViewScrollY()I

    move-result v4

    .line 187
    .local v4, "scrollY":I
    invoke-virtual {p0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->computeMaximumHorizontalScrollOffset()I

    move-result v5

    .line 188
    .local v5, "scrollRangeX":I
    invoke-virtual {p0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->computeMaximumVerticalScrollOffset()I

    move-result v6

    .line 192
    .local v6, "scrollRangeY":I
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    iget-boolean v7, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mProcessingTouchEvent:Z

    move v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v7}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->overScrollContainerViewBy(IIIIIIZ)V

    goto :goto_0
.end method

.method private scrollNativeTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->clampHorizontalScroll(I)I

    move-result p1

    .line 233
    invoke-direct {p0, p2}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->clampVerticalScroll(I)I

    move-result p2

    .line 237
    iget-boolean v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mProcessingTouchEvent:Z

    if-eqz v0, :cond_1

    .line 238
    iput p1, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDeferredNativeScrollX:I

    .line 239
    iput p2, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDeferredNativeScrollY:I

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mApplyDeferredNativeScroll:Z

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mNativeScrollX:I

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mNativeScrollY:I

    if-eq p2, v0, :cond_0

    .line 249
    :cond_2
    iput p1, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mNativeScrollX:I

    .line 250
    iput p2, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mNativeScrollY:I

    .line 252
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v0, p1, p2}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->scrollNativeTo(II)V

    goto :goto_0
.end method


# virtual methods
.method public computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->getContainerViewScrollX()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mContainerViewWidth:I

    iget v1, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mMaxHorizontalScrollOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public computeMaximumHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mMaxHorizontalScrollOffset:I

    return v0
.end method

.method public computeMaximumVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mMaxVerticalScrollOffset:I

    return v0
.end method

.method public computeScrollAndAbsorbGlow(Lcom/android/org/chromium/android_webview/OverScrollGlow;)V
    .locals 8
    .param p1, "overScrollGlow"    # Lcom/android/org/chromium/android_webview/OverScrollGlow;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mWasFlinging:Z

    if-nez v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 287
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mWasFlinging:Z

    .line 289
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->getContainerViewScrollX()I

    move-result v3

    .line 290
    .local v3, "oldX":I
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->getContainerViewScrollY()I

    move-result v4

    .line 291
    .local v4, "oldY":I
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    .line 292
    .local v1, "x":I
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    .line 294
    .local v2, "y":I
    invoke-virtual {p0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->computeMaximumHorizontalScrollOffset()I

    move-result v5

    .line 295
    .local v5, "scrollRangeX":I
    invoke-virtual {p0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->computeMaximumVerticalScrollOffset()I

    move-result v6

    .line 297
    .local v6, "scrollRangeY":I
    if-eqz p1, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v7

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/org/chromium/android_webview/OverScrollGlow;->absorbGlow(IIIIIIF)V

    .line 304
    :cond_1
    sub-int v0, v1, v3

    sub-int v7, v2, v4

    invoke-direct {p0, v0, v7}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->scrollBy(II)V

    .line 306
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->invalidate()V

    goto :goto_0
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mContainerViewHeight:I

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->getContainerViewScrollY()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 99
    iget v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mContainerViewHeight:I

    iget v1, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mMaxVerticalScrollOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public flingScroll(II)V
    .locals 9
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const/4 v5, 0x0

    .line 272
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->getContainerViewScrollX()I

    move-result v1

    .line 273
    .local v1, "scrollX":I
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->getContainerViewScrollY()I

    move-result v2

    .line 274
    .local v2, "scrollY":I
    invoke-virtual {p0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->computeMaximumHorizontalScrollOffset()I

    move-result v6

    .line 275
    .local v6, "scrollRangeX":I
    invoke-virtual {p0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->computeMaximumVerticalScrollOffset()I

    move-result v8

    .line 277
    .local v8, "scrollRangeY":I
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mScroller:Landroid/widget/OverScroller;

    move v3, p1

    move v4, p2

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 279
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->invalidate()V

    .line 280
    return-void
.end method

.method public isFlingActive()Z
    .locals 2

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    .line 168
    .local v0, "flinging":Z
    iget-boolean v1, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mWasFlinging:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mWasFlinging:Z

    .line 169
    return v0
.end method

.method public onContainerViewOverScrolled(IIZZ)V
    .locals 2
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->clampHorizontalScroll(I)I

    move-result p1

    .line 213
    invoke-direct {p0, p2}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->clampVerticalScroll(I)I

    move-result p2

    .line 215
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v0, p1, p2}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->scrollContainerViewTo(II)V

    .line 220
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->getContainerViewScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v1}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->getContainerViewScrollY()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->scrollNativeTo(II)V

    .line 221
    return-void
.end method

.method public onContainerViewScrollChanged(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 228
    invoke-direct {p0, p1, p2}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->scrollNativeTo(II)V

    .line 229
    return-void
.end method

.method public onFlingCancelGesture()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 260
    return-void
.end method

.method public onUnhandledFlingStartEvent(II)V
    .locals 2
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    .line 266
    neg-int v0, p1

    neg-int v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->flingScroll(II)V

    .line 267
    return-void
.end method

.method public overScrollBy(II)V
    .locals 0
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    .line 179
    invoke-direct {p0, p1, p2}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->scrollBy(II)V

    .line 180
    return-void
.end method

.method public pageDown(Z)Z
    .locals 5
    .param p1, "bottom"    # Z

    .prologue
    .line 358
    iget-object v3, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v3}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->getContainerViewScrollX()I

    move-result v1

    .line 359
    .local v1, "scrollX":I
    iget-object v3, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v3}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->getContainerViewScrollY()I

    move-result v2

    .line 361
    .local v2, "scrollY":I
    if-eqz p1, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->computeVerticalScrollRange()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->animateScrollTo(II)Z

    move-result v3

    .line 370
    :goto_0
    return v3

    .line 364
    :cond_0
    iget v3, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mContainerViewHeight:I

    div-int/lit8 v0, v3, 0x2

    .line 365
    .local v0, "dy":I
    iget v3, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mContainerViewHeight:I

    const/16 v4, 0x30

    if-le v3, v4, :cond_1

    .line 366
    iget v3, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mContainerViewHeight:I

    add-int/lit8 v0, v3, -0x18

    .line 370
    :cond_1
    add-int v3, v2, v0

    invoke-direct {p0, v1, v3}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->animateScrollTo(II)Z

    move-result v3

    goto :goto_0
.end method

.method public pageUp(Z)Z
    .locals 5
    .param p1, "top"    # Z

    .prologue
    .line 338
    iget-object v3, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v3}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->getContainerViewScrollX()I

    move-result v1

    .line 339
    .local v1, "scrollX":I
    iget-object v3, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v3}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->getContainerViewScrollY()I

    move-result v2

    .line 341
    .local v2, "scrollY":I
    if-eqz p1, :cond_0

    .line 343
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->animateScrollTo(II)Z

    move-result v3

    .line 351
    :goto_0
    return v3

    .line 345
    :cond_0
    iget v3, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mContainerViewHeight:I

    neg-int v3, v3

    div-int/lit8 v0, v3, 0x2

    .line 346
    .local v0, "dy":I
    iget v3, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mContainerViewHeight:I

    const/16 v4, 0x30

    if-le v3, v4, :cond_1

    .line 347
    iget v3, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mContainerViewHeight:I

    neg-int v3, v3

    add-int/lit8 v0, v3, 0x18

    .line 351
    :cond_1
    add-int v3, v2, v0

    invoke-direct {p0, v1, v3}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->animateScrollTo(II)Z

    move-result v3

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(IILandroid/graphics/Rect;Z)Z
    .locals 11
    .param p1, "childOffsetX"    # I
    .param p2, "childOffsetY"    # I
    .param p3, "rect"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z

    .prologue
    .line 385
    iget-object v9, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v9}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->getContainerViewScrollX()I

    move-result v5

    .line 386
    .local v5, "scrollX":I
    iget-object v9, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v9}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->getContainerViewScrollY()I

    move-result v7

    .line 388
    .local v7, "scrollY":I
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 390
    move v4, v7

    .line 391
    .local v4, "screenTop":I
    iget v9, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mContainerViewHeight:I

    add-int v1, v7, v9

    .line 392
    .local v1, "screenBottom":I
    const/4 v8, 0x0

    .line 394
    .local v8, "scrollYDelta":I
    iget v9, p3, Landroid/graphics/Rect;->bottom:I

    if-le v9, v1, :cond_3

    .line 395
    iget v9, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mContainerViewHeight:I

    div-int/lit8 v0, v9, 0x3

    .line 396
    .local v0, "oneThirdOfScreenHeight":I
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v9

    mul-int/lit8 v10, v0, 0x2

    if-le v9, v10, :cond_2

    .line 399
    iget v9, p3, Landroid/graphics/Rect;->top:I

    sub-int v8, v9, v4

    .line 409
    .end local v0    # "oneThirdOfScreenHeight":I
    :cond_0
    :goto_0
    move v2, v5

    .line 410
    .local v2, "screenLeft":I
    iget v9, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mContainerViewWidth:I

    add-int v3, v5, v9

    .line 411
    .local v3, "screenRight":I
    const/4 v6, 0x0

    .line 413
    .local v6, "scrollXDelta":I
    iget v9, p3, Landroid/graphics/Rect;->right:I

    if-le v9, v3, :cond_5

    iget v9, p3, Landroid/graphics/Rect;->left:I

    if-le v9, v2, :cond_5

    .line 414
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget v10, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mContainerViewWidth:I

    if-le v9, v10, :cond_4

    .line 415
    iget v9, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v2

    add-int/2addr v6, v9

    .line 423
    :cond_1
    :goto_1
    if-nez v8, :cond_6

    if-nez v6, :cond_6

    .line 424
    const/4 v9, 0x0

    .line 431
    :goto_2
    return v9

    .line 403
    .end local v2    # "screenLeft":I
    .end local v3    # "screenRight":I
    .end local v6    # "scrollXDelta":I
    .restart local v0    # "oneThirdOfScreenHeight":I
    :cond_2
    iget v9, p3, Landroid/graphics/Rect;->top:I

    add-int v10, v4, v0

    sub-int v8, v9, v10

    goto :goto_0

    .line 405
    .end local v0    # "oneThirdOfScreenHeight":I
    :cond_3
    iget v9, p3, Landroid/graphics/Rect;->top:I

    if-ge v9, v4, :cond_0

    .line 406
    iget v9, p3, Landroid/graphics/Rect;->top:I

    sub-int v8, v9, v4

    goto :goto_0

    .line 417
    .restart local v2    # "screenLeft":I
    .restart local v3    # "screenRight":I
    .restart local v6    # "scrollXDelta":I
    :cond_4
    iget v9, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v3

    add-int/2addr v6, v9

    goto :goto_1

    .line 419
    :cond_5
    iget v9, p3, Landroid/graphics/Rect;->left:I

    if-ge v9, v2, :cond_1

    .line 420
    iget v9, p3, Landroid/graphics/Rect;->left:I

    sub-int v9, v2, v9

    sub-int/2addr v6, v9

    goto :goto_1

    .line 427
    :cond_6
    if-eqz p4, :cond_7

    .line 428
    invoke-direct {p0, v6, v8}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->scrollBy(II)V

    .line 429
    const/4 v9, 0x1

    goto :goto_2

    .line 431
    :cond_7
    add-int v9, v5, v6

    add-int v10, v7, v8

    invoke-direct {p0, v9, v10}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->animateScrollTo(II)Z

    move-result v9

    goto :goto_2
.end method

.method public scrollContainerViewTo(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mNativeScrollX:I

    .line 151
    iput p2, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mNativeScrollY:I

    .line 153
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->getContainerViewScrollX()I

    move-result v3

    .line 154
    .local v3, "scrollX":I
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->getContainerViewScrollY()I

    move-result v4

    .line 155
    .local v4, "scrollY":I
    sub-int v1, p1, v3

    .line 156
    .local v1, "deltaX":I
    sub-int v2, p2, v4

    .line 157
    .local v2, "deltaY":I
    invoke-virtual {p0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->computeMaximumHorizontalScrollOffset()I

    move-result v5

    .line 158
    .local v5, "scrollRangeX":I
    invoke-virtual {p0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->computeMaximumVerticalScrollOffset()I

    move-result v6

    .line 162
    .local v6, "scrollRangeY":I
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    iget-boolean v7, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mProcessingTouchEvent:Z

    invoke-interface/range {v0 .. v7}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->overScrollContainerViewBy(IIIIIIZ)V

    .line 164
    return-void
.end method

.method public setContainerViewSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mContainerViewWidth:I

    .line 128
    iput p2, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mContainerViewHeight:I

    .line 129
    return-void
.end method

.method public setMaxScrollOffset(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mMaxHorizontalScrollOffset:I

    .line 120
    iput p2, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mMaxVerticalScrollOffset:I

    .line 121
    return-void
.end method

.method public setProcessingTouchEvent(Z)V
    .locals 2
    .param p1, "processingTouchEvent"    # Z

    .prologue
    .line 139
    sget-boolean v0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mProcessingTouchEvent:Z

    if-ne v0, p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 140
    :cond_0
    iput-boolean p1, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mProcessingTouchEvent:Z

    .line 142
    iget-boolean v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mProcessingTouchEvent:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mApplyDeferredNativeScroll:Z

    if-eqz v0, :cond_1

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mApplyDeferredNativeScroll:Z

    .line 144
    iget v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDeferredNativeScrollX:I

    iget v1, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDeferredNativeScrollY:I

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->scrollNativeTo(II)V

    .line 146
    :cond_1
    return-void
.end method

.method public syncScrollOffsetFromOnDraw()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v0}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->getContainerViewScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->mDelegate:Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;

    invoke-interface {v1}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager$Delegate;->getContainerViewScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/org/chromium/android_webview/AwScrollOffsetManager;->onContainerViewScrollChanged(II)V

    .line 136
    return-void
.end method
