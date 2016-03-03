.class Lorg/chromium/android_webview/OverScrollGlow;
.super Ljava/lang/Object;
.source "OverScrollGlow.java"


# instance fields
.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mHostView:Landroid/view/View;

.field private mOverScrollDeltaX:I

.field private mOverScrollDeltaY:I

.field private mShouldPull:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lorg/chromium/android_webview/OverScrollGlow;->mHostView:Landroid/view/View;

    .line 30
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 31
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 32
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 33
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 34
    return-void
.end method


# virtual methods
.method public absorbGlow(IIIIIIF)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "oldX"    # I
    .param p4, "oldY"    # I
    .param p5, "rangeX"    # I
    .param p6, "rangeY"    # I
    .param p7, "currentFlingVelocity"    # F

    .prologue
    .line 104
    if-gtz p6, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    if-gez p2, :cond_3

    if-ltz p4, :cond_3

    .line 106
    iget-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    float-to-int v1, p7

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 107
    iget-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 118
    :cond_1
    :goto_0
    if-lez p5, :cond_2

    .line 119
    if-gez p1, :cond_4

    if-ltz p3, :cond_4

    .line 120
    iget-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    float-to-int v1, p7

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 121
    iget-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    iget-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 131
    :cond_2
    :goto_1
    return-void

    .line 110
    :cond_3
    if-le p2, p6, :cond_1

    if-gt p4, p6, :cond_1

    .line 111
    iget-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    float-to-int v1, p7

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 112
    iget-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    iget-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0

    .line 124
    :cond_4
    if-le p1, p5, :cond_2

    if-gt p3, p5, :cond_2

    .line 125
    iget-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    float-to-int v1, p7

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 126
    iget-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    iget-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1
.end method

.method public drawEdgeGlows(Landroid/graphics/Canvas;II)Z
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "maxScrollX"    # I
    .param p3, "maxScrollY"    # I

    .prologue
    const/4 v9, 0x0

    .line 153
    iget-object v6, p0, Lorg/chromium/android_webview/OverScrollGlow;->mHostView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 154
    .local v3, "scrollX":I
    iget-object v6, p0, Lorg/chromium/android_webview/OverScrollGlow;->mHostView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 155
    .local v4, "scrollY":I
    iget-object v6, p0, Lorg/chromium/android_webview/OverScrollGlow;->mHostView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 156
    .local v5, "width":I
    iget-object v6, p0, Lorg/chromium/android_webview/OverScrollGlow;->mHostView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 158
    .local v0, "height":I
    const/4 v1, 0x0

    .line 159
    .local v1, "invalidateForGlow":Z
    iget-object v6, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_0

    .line 160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 162
    .local v2, "restoreCount":I
    int-to-float v6, v3

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 163
    iget-object v6, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v5, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 164
    iget-object v6, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 165
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 167
    .end local v2    # "restoreCount":I
    :cond_0
    iget-object v6, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 168
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 170
    .restart local v2    # "restoreCount":I
    neg-int v6, v5

    add-int/2addr v6, v3

    int-to-float v6, v6

    invoke-static {p3, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 171
    const/high16 v6, 0x43340000    # 180.0f

    int-to-float v7, v5

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 172
    iget-object v6, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v5, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 173
    iget-object v6, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 174
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 176
    .end local v2    # "restoreCount":I
    :cond_1
    iget-object v6, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 177
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 179
    .restart local v2    # "restoreCount":I
    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 180
    neg-int v6, v0

    sub-int/2addr v6, v4

    int-to-float v6, v6

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 181
    iget-object v6, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v0, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 182
    iget-object v6, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 183
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 185
    .end local v2    # "restoreCount":I
    :cond_2
    iget-object v6, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 188
    .restart local v2    # "restoreCount":I
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 189
    int-to-float v6, v4

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v7, v5

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 190
    iget-object v6, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, v0, v5}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 191
    iget-object v6, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 192
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 194
    .end local v2    # "restoreCount":I
    :cond_3
    return v1
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pullGlow(IIIIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "oldX"    # I
    .param p4, "oldY"    # I
    .param p5, "maxX"    # I
    .param p6, "maxY"    # I

    .prologue
    const/4 v5, 0x0

    .line 51
    iget-boolean v2, p0, Lorg/chromium/android_webview/OverScrollGlow;->mShouldPull:Z

    if-nez v2, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v2, p0, Lorg/chromium/android_webview/OverScrollGlow;->mHostView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    if-ne p3, v2, :cond_0

    iget-object v2, p0, Lorg/chromium/android_webview/OverScrollGlow;->mHostView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    if-ne p4, v2, :cond_0

    .line 57
    if-lez p5, :cond_3

    .line 58
    iget v2, p0, Lorg/chromium/android_webview/OverScrollGlow;->mOverScrollDeltaX:I

    add-int v0, p3, v2

    .line 59
    .local v0, "pulledToX":I
    if-gez v0, :cond_6

    .line 60
    iget-object v2, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    iget v3, p0, Lorg/chromium/android_webview/OverScrollGlow;->mOverScrollDeltaX:I

    int-to-float v3, v3

    iget-object v4, p0, Lorg/chromium/android_webview/OverScrollGlow;->mHostView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 61
    iget-object v2, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 62
    iget-object v2, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 70
    :cond_2
    :goto_1
    iput v5, p0, Lorg/chromium/android_webview/OverScrollGlow;->mOverScrollDeltaX:I

    .line 73
    .end local v0    # "pulledToX":I
    :cond_3
    if-gtz p6, :cond_4

    iget-object v2, p0, Lorg/chromium/android_webview/OverScrollGlow;->mHostView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getOverScrollMode()I

    move-result v2

    if-nez v2, :cond_0

    .line 74
    :cond_4
    iget v2, p0, Lorg/chromium/android_webview/OverScrollGlow;->mOverScrollDeltaY:I

    add-int v1, p4, v2

    .line 75
    .local v1, "pulledToY":I
    if-gez v1, :cond_7

    .line 76
    iget-object v2, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget v3, p0, Lorg/chromium/android_webview/OverScrollGlow;->mOverScrollDeltaY:I

    int-to-float v3, v3

    iget-object v4, p0, Lorg/chromium/android_webview/OverScrollGlow;->mHostView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 77
    iget-object v2, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 78
    iget-object v2, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 86
    :cond_5
    :goto_2
    iput v5, p0, Lorg/chromium/android_webview/OverScrollGlow;->mOverScrollDeltaY:I

    goto :goto_0

    .line 64
    .end local v1    # "pulledToY":I
    .restart local v0    # "pulledToX":I
    :cond_6
    if-le v0, p5, :cond_2

    .line 65
    iget-object v2, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    iget v3, p0, Lorg/chromium/android_webview/OverScrollGlow;->mOverScrollDeltaX:I

    int-to-float v3, v3

    iget-object v4, p0, Lorg/chromium/android_webview/OverScrollGlow;->mHostView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 66
    iget-object v2, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 67
    iget-object v2, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1

    .line 80
    .end local v0    # "pulledToX":I
    .restart local v1    # "pulledToY":I
    :cond_7
    if-le v1, p6, :cond_5

    .line 81
    iget-object v2, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget v3, p0, Lorg/chromium/android_webview/OverScrollGlow;->mOverScrollDeltaY:I

    int-to-float v3, v3

    iget-object v4, p0, Lorg/chromium/android_webview/OverScrollGlow;->mHostView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 82
    iget-object v2, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    .line 83
    iget-object v2, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_2
.end method

.method public releaseAll()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 210
    iget-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 211
    iget-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 212
    iget-object v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 213
    return-void
.end method

.method public setOverScrollDeltas(II)V
    .locals 1
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    .line 140
    iget v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mOverScrollDeltaX:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mOverScrollDeltaX:I

    .line 141
    iget v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mOverScrollDeltaY:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/chromium/android_webview/OverScrollGlow;->mOverScrollDeltaY:I

    .line 142
    return-void
.end method

.method public setShouldPull(Z)V
    .locals 0
    .param p1, "shouldPull"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lorg/chromium/android_webview/OverScrollGlow;->mShouldPull:Z

    .line 38
    return-void
.end method
