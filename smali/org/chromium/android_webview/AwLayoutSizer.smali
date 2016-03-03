.class public Lorg/chromium/android_webview/AwLayoutSizer;
.super Ljava/lang/Object;
.source "AwLayoutSizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/android_webview/AwLayoutSizer$Delegate;
    }
.end annotation


# instance fields
.field private mContentHeightCss:I

.field private mContentWidthCss:I

.field private mDIPScale:D

.field private mDelegate:Lorg/chromium/android_webview/AwLayoutSizer$Delegate;

.field private mFreezeLayoutRequests:Z

.field private mFrozenLayoutRequestPending:Z

.field private mHeightMeasurementIsFixed:Z

.field private mHeightMeasurementLimit:I

.field private mHeightMeasurementLimited:Z

.field private mPageScaleFactor:F

.field private mWidthMeasurementIsFixed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mPageScaleFactor:F

    .line 57
    return-void
.end method

.method private doUpdate(IIF)V
    .locals 12
    .param p1, "widthCss"    # I
    .param p2, "heightCss"    # I
    .param p3, "pageScaleFactor"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 110
    int-to-float v7, p2

    iget v8, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mPageScaleFactor:F

    mul-float/2addr v7, v8

    float-to-double v8, v7

    iget-wide v10, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mDIPScale:D

    mul-double/2addr v8, v10

    double-to-int v1, v8

    .line 111
    .local v1, "heightPix":I
    iget v7, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mPageScaleFactor:F

    cmpl-float v7, v7, p3

    if-eqz v7, :cond_6

    move v4, v5

    .line 112
    .local v4, "pageScaleChanged":Z
    :goto_0
    iget-boolean v7, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mHeightMeasurementIsFixed:Z

    if-nez v7, :cond_7

    iget-boolean v7, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mHeightMeasurementLimited:Z

    if-eqz v7, :cond_0

    iget v7, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mHeightMeasurementLimit:I

    if-ge v1, v7, :cond_7

    :cond_0
    move v0, v5

    .line 114
    .local v0, "contentHeightChangeMeaningful":Z
    :goto_1
    iget-boolean v7, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mWidthMeasurementIsFixed:Z

    if-eqz v7, :cond_1

    if-eqz v0, :cond_8

    :cond_1
    move v3, v5

    .line 116
    .local v3, "pageScaleChangeMeaningful":Z
    :goto_2
    iget v7, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mContentWidthCss:I

    if-eq v7, p1, :cond_2

    iget-boolean v7, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mWidthMeasurementIsFixed:Z

    if-eqz v7, :cond_4

    :cond_2
    iget v7, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mContentHeightCss:I

    if-eq v7, p2, :cond_3

    if-nez v0, :cond_4

    :cond_3
    if-eqz v4, :cond_9

    if-eqz v3, :cond_9

    :cond_4
    move v2, v5

    .line 120
    .local v2, "layoutNeeded":Z
    :goto_3
    iput p1, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mContentWidthCss:I

    .line 121
    iput p2, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mContentHeightCss:I

    .line 122
    iput p3, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mPageScaleFactor:F

    .line 124
    if-eqz v2, :cond_5

    .line 125
    iget-boolean v6, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mFreezeLayoutRequests:Z

    if-eqz v6, :cond_a

    .line 126
    iput-boolean v5, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mFrozenLayoutRequestPending:Z

    .line 131
    :cond_5
    :goto_4
    return-void

    .end local v0    # "contentHeightChangeMeaningful":Z
    .end local v2    # "layoutNeeded":Z
    .end local v3    # "pageScaleChangeMeaningful":Z
    .end local v4    # "pageScaleChanged":Z
    :cond_6
    move v4, v6

    .line 111
    goto :goto_0

    .restart local v4    # "pageScaleChanged":Z
    :cond_7
    move v0, v6

    .line 112
    goto :goto_1

    .restart local v0    # "contentHeightChangeMeaningful":Z
    :cond_8
    move v3, v6

    .line 114
    goto :goto_2

    .restart local v3    # "pageScaleChangeMeaningful":Z
    :cond_9
    move v2, v6

    .line 116
    goto :goto_3

    .line 128
    .restart local v2    # "layoutNeeded":Z
    :cond_a
    iget-object v5, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mDelegate:Lorg/chromium/android_webview/AwLayoutSizer$Delegate;

    invoke-interface {v5}, Lorg/chromium/android_webview/AwLayoutSizer$Delegate;->requestLayout()V

    goto :goto_4
.end method

.method private updateLayoutSettings()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mDelegate:Lorg/chromium/android_webview/AwLayoutSizer$Delegate;

    iget-object v1, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mDelegate:Lorg/chromium/android_webview/AwLayoutSizer$Delegate;

    invoke-interface {v1}, Lorg/chromium/android_webview/AwLayoutSizer$Delegate;->isLayoutParamsHeightWrapContent()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/android_webview/AwLayoutSizer$Delegate;->setForceZeroLayoutHeight(Z)V

    .line 197
    return-void
.end method


# virtual methods
.method public freezeLayoutRequests()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mFreezeLayoutRequests:Z

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mFrozenLayoutRequestPending:Z

    .line 73
    return-void
.end method

.method public onContentSizeChanged(II)V
    .locals 1
    .param p1, "widthCss"    # I
    .param p2, "heightCss"    # I

    .prologue
    .line 94
    iget v0, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mPageScaleFactor:F

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/android_webview/AwLayoutSizer;->doUpdate(IIF)V

    .line 95
    return-void
.end method

.method public onLayoutChange()V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Lorg/chromium/android_webview/AwLayoutSizer;->updateLayoutSettings()V

    .line 191
    return-void
.end method

.method public onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 138
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 139
    .local v2, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 140
    .local v3, "heightSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 141
    .local v6, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 143
    .local v7, "widthSize":I
    iget v8, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mContentHeightCss:I

    int-to-float v8, v8

    iget v9, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mPageScaleFactor:F

    mul-float/2addr v8, v9

    float-to-double v8, v8

    iget-wide v10, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mDIPScale:D

    mul-double/2addr v8, v10

    double-to-int v0, v8

    .line 144
    .local v0, "contentHeightPix":I
    iget v8, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mContentWidthCss:I

    int-to-float v8, v8

    iget v9, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mPageScaleFactor:F

    mul-float/2addr v8, v9

    float-to-double v8, v8

    iget-wide v10, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mDIPScale:D

    mul-double/2addr v8, v10

    double-to-int v1, v8

    .line 146
    .local v1, "contentWidthPix":I
    move v4, v0

    .line 147
    .local v4, "measuredHeight":I
    move v5, v1

    .line 150
    .local v5, "measuredWidth":I
    if-eqz v6, :cond_5

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mWidthMeasurementIsFixed:Z

    .line 151
    const/high16 v8, 0x40000000    # 2.0f

    if-ne v2, v8, :cond_6

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mHeightMeasurementIsFixed:Z

    .line 152
    const/high16 v8, -0x80000000

    if-ne v2, v8, :cond_7

    if-le v0, v3, :cond_7

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mHeightMeasurementLimited:Z

    .line 154
    iput v3, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mHeightMeasurementLimit:I

    .line 156
    iget-boolean v8, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mHeightMeasurementIsFixed:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mHeightMeasurementLimited:Z

    if-eqz v8, :cond_1

    .line 157
    :cond_0
    move v4, v3

    .line 160
    :cond_1
    iget-boolean v8, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mWidthMeasurementIsFixed:Z

    if-eqz v8, :cond_2

    .line 161
    move v5, v7

    .line 164
    :cond_2
    if-ge v4, v0, :cond_3

    .line 165
    const/high16 v8, 0x1000000

    or-int/2addr v4, v8

    .line 168
    :cond_3
    if-ge v5, v1, :cond_4

    .line 169
    const/high16 v8, 0x1000000

    or-int/2addr v5, v8

    .line 172
    :cond_4
    iget-object v8, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mDelegate:Lorg/chromium/android_webview/AwLayoutSizer$Delegate;

    invoke-interface {v8, v5, v4}, Lorg/chromium/android_webview/AwLayoutSizer$Delegate;->setMeasuredDimension(II)V

    .line 173
    return-void

    .line 150
    :cond_5
    const/4 v8, 0x0

    goto :goto_0

    .line 151
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 152
    :cond_7
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public onPageScaleChanged(F)V
    .locals 2
    .param p1, "pageScaleFactor"    # F

    .prologue
    .line 103
    iget v0, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mContentWidthCss:I

    iget v1, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mContentHeightCss:I

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/android_webview/AwLayoutSizer;->doUpdate(IIF)V

    .line 104
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "ow"    # I
    .param p4, "oh"    # I

    .prologue
    .line 181
    invoke-direct {p0}, Lorg/chromium/android_webview/AwLayoutSizer;->updateLayoutSettings()V

    .line 182
    return-void
.end method

.method public setDIPScale(D)V
    .locals 1
    .param p1, "dipScale"    # D

    .prologue
    .line 64
    iput-wide p1, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mDIPScale:D

    .line 65
    return-void
.end method

.method public setDelegate(Lorg/chromium/android_webview/AwLayoutSizer$Delegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/chromium/android_webview/AwLayoutSizer$Delegate;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mDelegate:Lorg/chromium/android_webview/AwLayoutSizer$Delegate;

    .line 61
    return-void
.end method

.method public unfreezeLayoutRequests()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    iput-boolean v1, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mFreezeLayoutRequests:Z

    .line 81
    iget-boolean v0, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mFrozenLayoutRequestPending:Z

    if-eqz v0, :cond_0

    .line 82
    iput-boolean v1, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mFrozenLayoutRequestPending:Z

    .line 83
    iget-object v0, p0, Lorg/chromium/android_webview/AwLayoutSizer;->mDelegate:Lorg/chromium/android_webview/AwLayoutSizer$Delegate;

    invoke-interface {v0}, Lorg/chromium/android_webview/AwLayoutSizer$Delegate;->requestLayout()V

    .line 85
    :cond_0
    return-void
.end method
