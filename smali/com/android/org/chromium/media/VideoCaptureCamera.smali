.class public abstract Lcom/android/org/chromium/media/VideoCaptureCamera;
.super Lcom/android/org/chromium/media/VideoCapture;
.source "VideoCaptureCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field protected mCamera:Landroid/hardware/Camera;

.field protected mCameraFacing:I

.field protected mCameraOrientation:I

.field protected mDeviceOrientation:I

.field protected mGlTextures:[I

.field protected mIsRunning:Z

.field protected mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method constructor <init>(Landroid/content/Context;IJ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "nativeVideoCaptureDeviceAndroid"    # J

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/chromium/media/VideoCapture;-><init>(Landroid/content/Context;IJ)V

    .line 32
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mIsRunning:Z

    .line 36
    iput-object v1, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    .line 37
    iput-object v1, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 74
    return-void
.end method

.method protected static getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;
    .locals 5
    .param p0, "id"    # I

    .prologue
    .line 46
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 49
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :try_start_0
    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :goto_0
    return-object v0

    .line 50
    .restart local v0    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :catch_0
    move-exception v1

    .line 51
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v2, "VideoCaptureCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCameraInfo: Camera.getCameraInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 5
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 61
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 67
    :goto_0
    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v2, "VideoCaptureCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCameraParameters: android.hardware.Camera.getParameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    .line 65
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public allocate(III)Z
    .locals 23
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I

    .prologue
    .line 78
    const-string v20, "VideoCaptureCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "allocate: requested ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")@"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "fps"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/org/chromium/media/VideoCaptureCamera;->getCameraInfo(I)Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    .line 88
    .local v3, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    if-nez v3, :cond_0

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Camera;->release()V

    .line 90
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    .line 91
    const/16 v20, 0x0

    .line 207
    .end local v3    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :goto_0
    return v20

    .line 82
    :catch_0
    move-exception v7

    .line 83
    .local v7, "ex":Ljava/lang/RuntimeException;
    const-string v20, "VideoCaptureCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "allocate: Camera.open: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/16 v20, 0x0

    goto :goto_0

    .line 94
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    .restart local v3    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    :cond_0
    iget v0, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/org/chromium/media/VideoCaptureCamera;->mCameraOrientation:I

    .line 95
    iget v0, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/org/chromium/media/VideoCaptureCamera;->mCameraFacing:I

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/chromium/media/VideoCaptureCamera;->getDeviceOrientation()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/org/chromium/media/VideoCaptureCamera;->mDeviceOrientation:I

    .line 97
    const-string v20, "VideoCaptureCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "allocate: orientation dev="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mDeviceOrientation:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", cam="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mCameraOrientation:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", facing="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mCameraFacing:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/org/chromium/media/VideoCaptureCamera;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v18

    .line 101
    .local v18, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v18, :cond_1

    .line 102
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    .line 103
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 108
    :cond_1
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v14

    .line 109
    .local v14, "listFpsRange":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-eqz v14, :cond_2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v20

    if-nez v20, :cond_3

    .line 110
    :cond_2
    const-string v20, "VideoCaptureCamera"

    const-string v21, "allocate: no fps range found"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 114
    :cond_3
    move/from16 v0, p3

    mul-int/lit16 v11, v0, 0x3e8

    .line 116
    .local v11, "frameRateScaled":I
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 117
    .local v4, "chosenFpsRange":[I
    const/16 v20, 0x0

    aget v20, v4, v20

    sub-int v20, v11, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    const/16 v21, 0x1

    aget v21, v4, v21

    sub-int v21, v11, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    const/16 v20, 0x0

    aget v10, v4, v20

    .line 120
    .local v10, "frameRateNearest":I
    :goto_1
    add-int/lit16 v0, v10, 0x3e7

    move/from16 v20, v0

    move/from16 v0, v20

    div-int/lit16 v5, v0, 0x3e8

    .line 121
    .local v5, "chosenFrameRate":I
    const v9, 0x7fffffff

    .line 122
    .local v9, "fpsRangeSize":I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 123
    .local v8, "fpsRange":[I
    const/16 v20, 0x0

    aget v20, v8, v20

    move/from16 v0, v20

    if-gt v0, v11, :cond_4

    const/16 v20, 0x1

    aget v20, v8, v20

    move/from16 v0, v20

    if-gt v11, v0, :cond_4

    const/16 v20, 0x1

    aget v20, v8, v20

    const/16 v21, 0x0

    aget v21, v8, v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    if-gt v0, v9, :cond_4

    .line 125
    move-object v4, v8

    .line 126
    move/from16 v5, p3

    .line 127
    const/16 v20, 0x1

    aget v20, v8, v20

    const/16 v21, 0x0

    aget v21, v8, v21

    sub-int v9, v20, v21

    goto :goto_2

    .line 117
    .end local v5    # "chosenFrameRate":I
    .end local v8    # "fpsRange":[I
    .end local v9    # "fpsRangeSize":I
    .end local v10    # "frameRateNearest":I
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_5
    const/16 v20, 0x1

    aget v10, v4, v20

    goto :goto_1

    .line 130
    .restart local v5    # "chosenFrameRate":I
    .restart local v9    # "fpsRangeSize":I
    .restart local v10    # "frameRateNearest":I
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_6
    const-string v20, "VideoCaptureCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "allocate: fps set to "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", ["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x0

    aget v22, v4, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x1

    aget v22, v4, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v13

    .line 136
    .local v13, "listCameraSize":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const v17, 0x7fffffff

    .line 137
    .local v17, "minDiff":I
    move/from16 v16, p1

    .line 138
    .local v16, "matchedWidth":I
    move/from16 v15, p2

    .line 139
    .local v15, "matchedHeight":I
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/Camera$Size;

    .line 140
    .local v19, "size":Landroid/hardware/Camera$Size;
    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    sub-int v20, v20, p1

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    sub-int v21, v21, p2

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    add-int v6, v20, v21

    .line 142
    .local v6, "diff":I
    const-string v20, "VideoCaptureCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "allocate: supported ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "), diff="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    move/from16 v0, v17

    if-ge v6, v0, :cond_7

    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    rem-int/lit8 v20, v20, 0x20

    if-nez v20, :cond_7

    .line 149
    move/from16 v17, v6

    .line 150
    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v16, v0

    .line 151
    move-object/from16 v0, v19

    iget v15, v0, Landroid/hardware/Camera$Size;->height:I

    goto :goto_3

    .line 154
    .end local v6    # "diff":I
    .end local v19    # "size":Landroid/hardware/Camera$Size;
    :cond_8
    const v20, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 155
    const-string v20, "VideoCaptureCamera"

    const-string v21, "allocate: can not find a multiple-of-32 resolution"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 158
    :cond_9
    const-string v20, "VideoCaptureCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "allocate: matched ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "x"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 161
    const-string v20, "VideoCaptureCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Image stabilization supported, currently: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", setting it."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    .line 168
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v15, v5, v2}, Lcom/android/org/chromium/media/VideoCaptureCamera;->setCaptureParameters(IIILandroid/hardware/Camera$Parameters;)V

    .line 169
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 170
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 171
    const/16 v20, 0x0

    aget v20, v4, v20

    const/16 v21, 0x1

    aget v21, v4, v21

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mCaptureFormat:Lcom/android/org/chromium/media/VideoCapture$CaptureFormat;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/org/chromium/media/VideoCapture$CaptureFormat;->mPixelFormat:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 174
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    .line 184
    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 185
    const v20, 0x8d65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    invoke-static/range {v20 .. v21}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 187
    const v20, 0x8d65

    const/16 v21, 0x2801

    const v22, 0x46180400    # 9729.0f

    invoke-static/range {v20 .. v22}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 189
    const v20, 0x8d65

    const/16 v21, 0x2800

    const v22, 0x46180400    # 9729.0f

    invoke-static/range {v20 .. v22}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 192
    const v20, 0x8d65

    const/16 v21, 0x2802

    const v22, 0x812f

    invoke-static/range {v20 .. v22}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 194
    const v20, 0x8d65

    const/16 v21, 0x2803

    const v22, 0x812f

    invoke-static/range {v20 .. v22}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 197
    new-instance v20, Landroid/graphics/SurfaceTexture;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    invoke-direct/range {v20 .. v21}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/org/chromium/media/VideoCaptureCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 200
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/chromium/media/VideoCaptureCamera;->allocateBuffers()V

    .line 207
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 165
    :cond_a
    const-string v20, "VideoCaptureCamera"

    const-string v21, "Image stabilization not supported."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 175
    :catch_1
    move-exception v7

    .line 176
    .restart local v7    # "ex":Ljava/lang/RuntimeException;
    const-string v20, "VideoCaptureCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "setParameters: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 201
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v7

    .line 202
    .local v7, "ex":Ljava/io/IOException;
    const-string v20, "VideoCaptureCamera"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "allocate: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/16 v20, 0x0

    goto/16 :goto_0
.end method

.method public deallocate()V
    .locals 4

    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 274
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/android/org/chromium/media/VideoCaptureCamera;->stopCapture()I

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 265
    iget-object v1, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    if-eqz v1, :cond_1

    .line 266
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mGlTextures:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 267
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mCaptureFormat:Lcom/android/org/chromium/media/VideoCapture$CaptureFormat;

    .line 268
    iget-object v1, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 269
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "VideoCaptureCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deallocate: failed to deallocate camera, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getDeviceOrientation()I
    .locals 4

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "orientation":I
    iget-object v2, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 293
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 305
    const/4 v0, 0x0

    .line 309
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_0
    :goto_0
    return v0

    .line 295
    .restart local v1    # "wm":Landroid/view/WindowManager;
    :pswitch_0
    const/16 v0, 0x5a

    .line 296
    goto :goto_0

    .line 298
    :pswitch_1
    const/16 v0, 0xb4

    .line 299
    goto :goto_0

    .line 301
    :pswitch_2
    const/16 v0, 0x10e

    .line 302
    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method abstract setCaptureParameters(IIILandroid/hardware/Camera$Parameters;)V
.end method

.method abstract setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
.end method

.method public startCapture()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 212
    iget-object v3, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_0

    .line 213
    const-string v2, "VideoCaptureCamera"

    const-string v3, "startCapture: camera is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    return v1

    .line 217
    :cond_0
    iget-object v3, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 219
    :try_start_0
    iget-boolean v3, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 224
    iget-object v1, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v1, v2

    goto :goto_0

    .line 222
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mIsRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    iget-object v3, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 226
    invoke-virtual {p0, p0}, Lcom/android/org/chromium/media/VideoCaptureCamera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 228
    :try_start_2
    iget-object v3, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move v1, v2

    .line 233
    goto :goto_0

    .line 224
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v2, "VideoCaptureCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startCapture: Camera.startPreview: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopCapture()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    iget-object v0, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 239
    const-string v0, "VideoCaptureCamera"

    const-string v1, "stopCapture: camera is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_0
    return v2

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 245
    :try_start_0
    iget-boolean v0, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mIsRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 248
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mIsRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    iget-object v0, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 253
    iget-object v0, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/org/chromium/media/VideoCaptureCamera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/org/chromium/media/VideoCaptureCamera;->mPreviewBufferLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
