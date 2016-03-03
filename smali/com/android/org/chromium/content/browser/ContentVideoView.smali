.class public Lcom/android/org/chromium/content/browser/ContentVideoView;
.super Landroid/widget/FrameLayout;
.source "ContentVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/content/browser/ContentVideoView$ProgressView;,
        Lcom/android/org/chromium/content/browser/ContentVideoView$VideoSurfaceView;
    }
.end annotation


# instance fields
.field private final mClient:Lcom/android/org/chromium/content/browser/ContentVideoViewClient;

.field private mCurrentState:I

.field private mDuration:I

.field private mErrorButton:Ljava/lang/String;

.field private mErrorTitle:Ljava/lang/String;

.field private final mExitFullscreenRunnable:Ljava/lang/Runnable;

.field private mInitialOrientation:Z

.field private mNativeContentVideoView:J

.field private mOrientationChangedTime:J

.field private mPlaybackErrorText:Ljava/lang/String;

.field private mPlaybackStartTime:J

.field private mPossibleAccidentalChange:Z

.field private mProgressView:Landroid/view/View;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mUmaRecorded:Z

.field private mUnknownErrorText:Ljava/lang/String;

.field private mVideoHeight:I

.field private mVideoLoadingText:Ljava/lang/String;

.field private mVideoSurfaceView:Lcom/android/org/chromium/content/browser/ContentVideoView$VideoSurfaceView;

.field private mVideoWidth:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;JLcom/android/org/chromium/content/browser/ContentVideoViewClient;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeContentVideoView"    # J
    .param p4, "client"    # Lcom/android/org/chromium/content/browser/ContentVideoViewClient;

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 75
    iput v1, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mCurrentState:I

    .line 159
    new-instance v0, Lcom/android/org/chromium/content/browser/ContentVideoView$1;

    invoke-direct {v0, p0}, Lcom/android/org/chromium/content/browser/ContentVideoView$1;-><init>(Lcom/android/org/chromium/content/browser/ContentVideoView;)V

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mExitFullscreenRunnable:Ljava/lang/Runnable;

    .line 169
    iput-wide p2, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    .line 170
    iput-object p4, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mClient:Lcom/android/org/chromium/content/browser/ContentVideoViewClient;

    .line 171
    iput-boolean v1, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mUmaRecorded:Z

    .line 172
    iput-boolean v1, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mPossibleAccidentalChange:Z

    .line 173
    invoke-direct {p0, p1}, Lcom/android/org/chromium/content/browser/ContentVideoView;->initResources(Landroid/content/Context;)V

    .line 174
    new-instance v0, Lcom/android/org/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    invoke-direct {v0, p0, p1}, Lcom/android/org/chromium/content/browser/ContentVideoView$VideoSurfaceView;-><init>(Lcom/android/org/chromium/content/browser/ContentVideoView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lcom/android/org/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    .line 175
    invoke-virtual {p0}, Lcom/android/org/chromium/content/browser/ContentVideoView;->showContentVideoView()V

    .line 176
    invoke-virtual {p0, v1}, Lcom/android/org/chromium/content/browser/ContentVideoView;->setVisibility(I)V

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/android/org/chromium/content/browser/ContentVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/content/browser/ContentVideoView;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/org/chromium/content/browser/ContentVideoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/content/browser/ContentVideoView;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/org/chromium/content/browser/ContentVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/content/browser/ContentVideoView;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mUmaRecorded:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/org/chromium/content/browser/ContentVideoView;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/org/chromium/content/browser/ContentVideoView;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mPlaybackStartTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/org/chromium/content/browser/ContentVideoView;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/org/chromium/content/browser/ContentVideoView;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mOrientationChangedTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/org/chromium/content/browser/ContentVideoView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/content/browser/ContentVideoView;
    .param p1, "x1"    # J

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mOrientationChangedTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/org/chromium/content/browser/ContentVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/content/browser/ContentVideoView;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/org/chromium/content/browser/ContentVideoView;->isOrientationPortrait()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/org/chromium/content/browser/ContentVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/content/browser/ContentVideoView;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mInitialOrientation:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/org/chromium/content/browser/ContentVideoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/content/browser/ContentVideoView;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mPossibleAccidentalChange:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/org/chromium/content/browser/ContentVideoView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/org/chromium/content/browser/ContentVideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mPossibleAccidentalChange:Z

    return p1
.end method

.method private static createContentVideoView(Lcom/android/org/chromium/content/browser/ContentViewCore;J)Lcom/android/org/chromium/content/browser/ContentVideoView;
    .locals 3
    .param p0, "contentViewCore"    # Lcom/android/org/chromium/content/browser/ContentViewCore;
    .param p1, "nativeContentVideoView"    # J

    .prologue
    .line 417
    invoke-static {}, Lcom/android/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 418
    invoke-virtual {p0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 419
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/org/chromium/content/browser/ContentViewCore;->getContentVideoViewClient()Lcom/android/org/chromium/content/browser/ContentVideoViewClient;

    move-result-object v0

    .line 420
    .local v0, "client":Lcom/android/org/chromium/content/browser/ContentVideoViewClient;
    new-instance v2, Lcom/android/org/chromium/content/browser/ContentVideoView;

    invoke-direct {v2, v1, p1, p2, v0}, Lcom/android/org/chromium/content/browser/ContentVideoView;-><init>(Landroid/content/Context;JLcom/android/org/chromium/content/browser/ContentVideoViewClient;)V

    .line 421
    .local v2, "videoView":Lcom/android/org/chromium/content/browser/ContentVideoView;
    invoke-interface {v0, v2}, Lcom/android/org/chromium/content/browser/ContentVideoViewClient;->enterFullscreenVideo(Landroid/view/View;)V

    .line 422
    return-object v2
.end method

.method public static getContentVideoView()Lcom/android/org/chromium/content/browser/ContentVideoView;
    .locals 1

    .prologue
    .line 475
    invoke-static {}, Lcom/android/org/chromium/content/browser/ContentVideoView;->nativeGetSingletonJavaContentVideoView()Lcom/android/org/chromium/content/browser/ContentVideoView;

    move-result-object v0

    return-object v0
.end method

.method private initResources(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mPlaybackErrorText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 185
    :cond_0
    sget v0, Lcom/android/org/chromium/content/R$string;->media_player_error_text_invalid_progressive_playback:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mPlaybackErrorText:Ljava/lang/String;

    .line 187
    sget v0, Lcom/android/org/chromium/content/R$string;->media_player_error_text_unknown:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mUnknownErrorText:Ljava/lang/String;

    .line 189
    sget v0, Lcom/android/org/chromium/content/R$string;->media_player_error_button:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mErrorButton:Ljava/lang/String;

    .line 191
    sget v0, Lcom/android/org/chromium/content/R$string;->media_player_error_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mErrorTitle:Ljava/lang/String;

    .line 193
    sget v0, Lcom/android/org/chromium/content/R$string;->media_player_loading_video:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mVideoLoadingText:Ljava/lang/String;

    goto :goto_0
.end method

.method private isOrientationPortrait()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 488
    invoke-virtual {p0}, Lcom/android/org/chromium/content/browser/ContentVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 489
    .local v0, "context":Landroid/content/Context;
    const-string v5, "window"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 490
    .local v2, "manager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 491
    .local v1, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 492
    .local v3, "outputSize":Landroid/graphics/Point;
    invoke-virtual {v1, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 493
    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    if-gt v5, v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method private native nativeExitFullscreen(JZ)V
.end method

.method private native nativeGetCurrentPosition(J)I
.end method

.method private native nativeGetDurationInMilliSeconds(J)I
.end method

.method private static native nativeGetSingletonJavaContentVideoView()Lcom/android/org/chromium/content/browser/ContentVideoView;
.end method

.method private native nativeGetVideoHeight(J)I
.end method

.method private native nativeGetVideoWidth(J)I
.end method

.method private native nativeIsPlaying(J)Z
.end method

.method private native nativePause(J)V
.end method

.method private native nativePlay(J)V
.end method

.method private native nativeRecordExitFullscreenPlayback(JZJJ)V
.end method

.method private native nativeRecordFullscreenPlayback(JZZ)V
.end method

.method private native nativeRequestMediaMetadata(J)V
.end method

.method private native nativeSeekTo(JI)V
.end method

.method private native nativeSetSurface(JLandroid/view/Surface;)V
.end method

.method private onExitFullscreen()V
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/org/chromium/content/browser/ContentVideoView;->exitFullscreen(Z)V

    .line 454
    return-void
.end method

.method private onPlaybackComplete()V
    .locals 0

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/android/org/chromium/content/browser/ContentVideoView;->onCompletion()V

    .line 289
    return-void
.end method

.method private onVideoSizeChanged(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 276
    iput p1, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mVideoWidth:I

    .line 277
    iput p2, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mVideoHeight:I

    .line 279
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lcom/android/org/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    invoke-virtual {v0}, Lcom/android/org/chromium/content/browser/ContentVideoView$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mVideoWidth:I

    iget v2, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mVideoHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 280
    return-void
.end method


# virtual methods
.method protected destroyContentVideoView(Z)V
    .locals 2
    .param p1, "nativeViewDestroyed"    # Z

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lcom/android/org/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/android/org/chromium/content/browser/ContentVideoView;->removeSurfaceView()V

    .line 464
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/org/chromium/content/browser/ContentVideoView;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mClient:Lcom/android/org/chromium/content/browser/ContentVideoViewClient;

    invoke-interface {v0}, Lcom/android/org/chromium/content/browser/ContentVideoViewClient;->exitFullscreenVideo()V

    .line 469
    :cond_0
    if-eqz p1, :cond_1

    .line 470
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    .line 472
    :cond_1
    return-void
.end method

.method public exitFullscreen(Z)V
    .locals 12
    .param p1, "relaseMediaPlayer"    # Z

    .prologue
    const-wide/16 v10, 0x0

    .line 433
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/org/chromium/content/browser/ContentVideoView;->destroyContentVideoView(Z)V

    .line 434
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_2

    .line 435
    iget-boolean v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mUmaRecorded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mPossibleAccidentalChange:Z

    if-nez v0, :cond_1

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 437
    .local v8, "currentTime":J
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mOrientationChangedTime:J

    iget-wide v2, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mPlaybackStartTime:J

    sub-long v4, v0, v2

    .line 438
    .local v4, "timeBeforeOrientationChange":J
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mOrientationChangedTime:J

    sub-long v6, v8, v0

    .line 439
    .local v6, "timeAfterOrientationChange":J
    cmp-long v0, v4, v10

    if-nez v0, :cond_0

    .line 440
    move-wide v4, v6

    .line 441
    const-wide/16 v6, 0x0

    .line 443
    :cond_0
    iget-wide v1, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    iget-boolean v3, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mInitialOrientation:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/org/chromium/content/browser/ContentVideoView;->nativeRecordExitFullscreenPlayback(JZJJ)V

    .line 446
    .end local v4    # "timeBeforeOrientationChange":J
    .end local v6    # "timeAfterOrientationChange":J
    .end local v8    # "currentTime":J
    :cond_1
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/org/chromium/content/browser/ContentVideoView;->nativeExitFullscreen(JZ)V

    .line 447
    iput-wide v10, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    .line 449
    :cond_2
    return-void
.end method

.method public isPlaying()Z
    .locals 4

    .prologue
    .line 411
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/content/browser/ContentVideoView;->nativeIsPlaying(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBufferingUpdate(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 284
    return-void
.end method

.method protected onCompletion()V
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mCurrentState:I

    .line 353
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 480
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 481
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/org/chromium/content/browser/ContentVideoView;->exitFullscreen(Z)V

    .line 482
    const/4 v0, 0x1

    .line 484
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMediaPlayerError(I)V
    .locals 7
    .param p1, "errorType"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, -0x1

    .line 220
    const-string v2, "ContentVideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnMediaPlayerError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget v2, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mCurrentState:I

    if-eq v2, v5, :cond_0

    iget v2, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mCurrentState:I

    if-ne v2, v6, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    if-eq p1, v6, :cond_0

    .line 230
    iput v5, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mCurrentState:I

    .line 232
    invoke-virtual {p0}, Lcom/android/org/chromium/content/browser/ContentVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/chromium/content/browser/ContentViewCore;->activityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_2

    .line 233
    const-string v2, "ContentVideoView"

    const-string v3, "Unable to show alert dialog because it requires an activity context"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {p0}, Lcom/android/org/chromium/content/browser/ContentVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 248
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 249
    iget-object v1, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mPlaybackErrorText:Ljava/lang/String;

    .line 255
    .local v1, "message":Ljava/lang/String;
    :goto_1
    :try_start_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/org/chromium/content/browser/ContentVideoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mErrorTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mErrorButton:Ljava/lang/String;

    new-instance v4, Lcom/android/org/chromium/content/browser/ContentVideoView$2;

    invoke-direct {v4, p0}, Lcom/android/org/chromium/content/browser/ContentVideoView$2;-><init>(Lcom/android/org/chromium/content/browser/ContentVideoView;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "ContentVideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot show the alert dialog, error message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 251
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "message":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mUnknownErrorText:Ljava/lang/String;

    .restart local v1    # "message":Ljava/lang/String;
    goto :goto_1
.end method

.method protected onUpdateMediaMetadata(IIIZZZ)V
    .locals 6
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I
    .param p3, "duration"    # I
    .param p4, "canPause"    # Z
    .param p5, "canSeekBack"    # Z
    .param p6, "canSeekForward"    # Z

    .prologue
    const/4 v2, 0x1

    .line 299
    iput p3, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mDuration:I

    .line 300
    iget-object v1, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mProgressView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 301
    invoke-virtual {p0}, Lcom/android/org/chromium/content/browser/ContentVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mCurrentState:I

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/android/org/chromium/content/browser/ContentVideoView;->onVideoSizeChanged(II)V

    .line 303
    iget-boolean v1, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mUmaRecorded:Z

    if-eqz v1, :cond_2

    .line 318
    :cond_0
    :goto_1
    return-void

    .line 301
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 305
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/org/chromium/content/browser/ContentVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "accelerometer_rotation"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/android/org/chromium/content/browser/ContentVideoView;->isOrientationPortrait()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mInitialOrientation:Z

    .line 313
    iput-boolean v2, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mUmaRecorded:Z

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mPlaybackStartTime:J

    .line 315
    iget-wide v4, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mPlaybackStartTime:J

    iput-wide v4, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mOrientationChangedTime:J

    .line 316
    iget-wide v4, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    if-le p2, p1, :cond_3

    :goto_2
    iget-boolean v1, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mInitialOrientation:Z

    invoke-direct {p0, v4, v5, v2, v1}, Lcom/android/org/chromium/content/browser/ContentVideoView;->nativeRecordFullscreenPlayback(JZZ)V

    goto :goto_1

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_1

    .line 316
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method protected openVideo()V
    .locals 4

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 342
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mCurrentState:I

    .line 343
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 344
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/content/browser/ContentVideoView;->nativeRequestMediaMetadata(J)V

    .line 345
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    iget-object v2, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/chromium/content/browser/ContentVideoView;->nativeSetSurface(JLandroid/view/Surface;)V

    .line 349
    :cond_0
    return-void
.end method

.method public removeSurfaceView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 426
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lcom/android/org/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    invoke-virtual {p0, v0}, Lcom/android/org/chromium/content/browser/ContentVideoView;->removeView(Landroid/view/View;)V

    .line 427
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mProgressView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/org/chromium/content/browser/ContentVideoView;->removeView(Landroid/view/View;)V

    .line 428
    iput-object v1, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lcom/android/org/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    .line 429
    iput-object v1, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mProgressView:Landroid/view/View;

    .line 430
    return-void
.end method

.method protected showContentVideoView()V
    .locals 5

    .prologue
    const/16 v4, 0x11

    const/4 v3, -0x2

    .line 198
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lcom/android/org/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    invoke-virtual {v0}, Lcom/android/org/chromium/content/browser/ContentVideoView$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 199
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mVideoSurfaceView:Lcom/android/org/chromium/content/browser/ContentVideoView$VideoSurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/org/chromium/content/browser/ContentVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mClient:Lcom/android/org/chromium/content/browser/ContentVideoViewClient;

    invoke-interface {v0}, Lcom/android/org/chromium/content/browser/ContentVideoViewClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mProgressView:Landroid/view/View;

    .line 205
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mProgressView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/android/org/chromium/content/browser/ContentVideoView$ProgressView;

    invoke-virtual {p0}, Lcom/android/org/chromium/content/browser/ContentVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mVideoLoadingText:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/org/chromium/content/browser/ContentVideoView$ProgressView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mProgressView:Landroid/view/View;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mProgressView:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/org/chromium/content/browser/ContentVideoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 322
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 327
    invoke-virtual {p0}, Lcom/android/org/chromium/content/browser/ContentVideoView;->openVideo()V

    .line 328
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v4, 0x0

    .line 332
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 333
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mNativeContentVideoView:J

    invoke-direct {p0, v0, v1, v4}, Lcom/android/org/chromium/content/browser/ContentVideoView;->nativeSetSurface(JLandroid/view/Surface;)V

    .line 335
    :cond_0
    iput-object v4, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 336
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/ContentVideoView;->mExitFullscreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/org/chromium/content/browser/ContentVideoView;->post(Ljava/lang/Runnable;)Z

    .line 337
    return-void
.end method
