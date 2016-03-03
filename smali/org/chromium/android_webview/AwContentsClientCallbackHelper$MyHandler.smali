.class Lorg/chromium/android_webview/AwContentsClientCallbackHelper$MyHandler;
.super Landroid/os/Handler;
.source "AwContentsClientCallbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/android_webview/AwContentsClientCallbackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/android_webview/AwContentsClientCallbackHelper;


# direct methods
.method private constructor <init>(Lorg/chromium/android_webview/AwContentsClientCallbackHelper;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 93
    iput-object p1, p0, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$MyHandler;->this$0:Lorg/chromium/android_webview/AwContentsClientCallbackHelper;

    .line 94
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/android_webview/AwContentsClientCallbackHelper;Landroid/os/Looper;Lorg/chromium/android_webview/AwContentsClientCallbackHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/android_webview/AwContentsClientCallbackHelper;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lorg/chromium/android_webview/AwContentsClientCallbackHelper$1;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$MyHandler;-><init>(Lorg/chromium/android_webview/AwContentsClientCallbackHelper;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 99
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 146
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AwContentsClientCallbackHelper: unhandled message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :pswitch_0
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 102
    .local v12, "url":Ljava/lang/String;
    iget-object v1, p0, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$MyHandler;->this$0:Lorg/chromium/android_webview/AwContentsClientCallbackHelper;

    # getter for: Lorg/chromium/android_webview/AwContentsClientCallbackHelper;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;
    invoke-static {v1}, Lorg/chromium/android_webview/AwContentsClientCallbackHelper;->access$000(Lorg/chromium/android_webview/AwContentsClientCallbackHelper;)Lorg/chromium/android_webview/AwContentsClient;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/chromium/android_webview/AwContentsClient;->onLoadResource(Ljava/lang/String;)V

    .line 149
    .end local v12    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 106
    :pswitch_1
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .line 107
    .restart local v12    # "url":Ljava/lang/String;
    iget-object v1, p0, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$MyHandler;->this$0:Lorg/chromium/android_webview/AwContentsClientCallbackHelper;

    # getter for: Lorg/chromium/android_webview/AwContentsClientCallbackHelper;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;
    invoke-static {v1}, Lorg/chromium/android_webview/AwContentsClientCallbackHelper;->access$000(Lorg/chromium/android_webview/AwContentsClientCallbackHelper;)Lorg/chromium/android_webview/AwContentsClient;

    move-result-object v1

    invoke-virtual {v1, v12}, Lorg/chromium/android_webview/AwContentsClient;->onPageStarted(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    .end local v12    # "url":Ljava/lang/String;
    :pswitch_2
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$DownloadInfo;

    .line 112
    .local v8, "info":Lorg/chromium/android_webview/AwContentsClientCallbackHelper$DownloadInfo;
    iget-object v1, p0, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$MyHandler;->this$0:Lorg/chromium/android_webview/AwContentsClientCallbackHelper;

    # getter for: Lorg/chromium/android_webview/AwContentsClientCallbackHelper;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;
    invoke-static {v1}, Lorg/chromium/android_webview/AwContentsClientCallbackHelper;->access$000(Lorg/chromium/android_webview/AwContentsClientCallbackHelper;)Lorg/chromium/android_webview/AwContentsClient;

    move-result-object v1

    iget-object v2, v8, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$DownloadInfo;->mUrl:Ljava/lang/String;

    iget-object v3, v8, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$DownloadInfo;->mUserAgent:Ljava/lang/String;

    iget-object v4, v8, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$DownloadInfo;->mContentDisposition:Ljava/lang/String;

    iget-object v5, v8, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$DownloadInfo;->mMimeType:Ljava/lang/String;

    iget-wide v6, v8, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$DownloadInfo;->mContentLength:J

    invoke-virtual/range {v1 .. v7}, Lorg/chromium/android_webview/AwContentsClient;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 117
    .end local v8    # "info":Lorg/chromium/android_webview/AwContentsClientCallbackHelper$DownloadInfo;
    :pswitch_3
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$LoginRequestInfo;

    .line 118
    .local v8, "info":Lorg/chromium/android_webview/AwContentsClientCallbackHelper$LoginRequestInfo;
    iget-object v1, p0, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$MyHandler;->this$0:Lorg/chromium/android_webview/AwContentsClientCallbackHelper;

    # getter for: Lorg/chromium/android_webview/AwContentsClientCallbackHelper;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;
    invoke-static {v1}, Lorg/chromium/android_webview/AwContentsClientCallbackHelper;->access$000(Lorg/chromium/android_webview/AwContentsClientCallbackHelper;)Lorg/chromium/android_webview/AwContentsClient;

    move-result-object v1

    iget-object v2, v8, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$LoginRequestInfo;->mRealm:Ljava/lang/String;

    iget-object v3, v8, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$LoginRequestInfo;->mAccount:Ljava/lang/String;

    iget-object v4, v8, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$LoginRequestInfo;->mArgs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/android_webview/AwContentsClient;->onReceivedLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    .end local v8    # "info":Lorg/chromium/android_webview/AwContentsClientCallbackHelper$LoginRequestInfo;
    :pswitch_4
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$OnReceivedErrorInfo;

    .line 123
    .local v8, "info":Lorg/chromium/android_webview/AwContentsClientCallbackHelper$OnReceivedErrorInfo;
    iget-object v1, p0, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$MyHandler;->this$0:Lorg/chromium/android_webview/AwContentsClientCallbackHelper;

    # getter for: Lorg/chromium/android_webview/AwContentsClientCallbackHelper;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;
    invoke-static {v1}, Lorg/chromium/android_webview/AwContentsClientCallbackHelper;->access$000(Lorg/chromium/android_webview/AwContentsClientCallbackHelper;)Lorg/chromium/android_webview/AwContentsClient;

    move-result-object v1

    iget v2, v8, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$OnReceivedErrorInfo;->mErrorCode:I

    iget-object v3, v8, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$OnReceivedErrorInfo;->mDescription:Ljava/lang/String;

    iget-object v4, v8, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$OnReceivedErrorInfo;->mFailingUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/android_webview/AwContentsClient;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    .end local v8    # "info":Lorg/chromium/android_webview/AwContentsClientCallbackHelper$OnReceivedErrorInfo;
    :pswitch_5
    const/4 v11, 0x0

    .line 130
    .local v11, "picture":Landroid/graphics/Picture;
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "picture":Landroid/graphics/Picture;
    check-cast v11, Landroid/graphics/Picture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .restart local v11    # "picture":Landroid/graphics/Picture;
    :cond_0
    iget-object v1, p0, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$MyHandler;->this$0:Lorg/chromium/android_webview/AwContentsClientCallbackHelper;

    # getter for: Lorg/chromium/android_webview/AwContentsClientCallbackHelper;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;
    invoke-static {v1}, Lorg/chromium/android_webview/AwContentsClientCallbackHelper;->access$000(Lorg/chromium/android_webview/AwContentsClientCallbackHelper;)Lorg/chromium/android_webview/AwContentsClient;

    move-result-object v1

    invoke-virtual {v1, v11}, Lorg/chromium/android_webview/AwContentsClient;->onNewPicture(Landroid/graphics/Picture;)V

    .line 135
    iget-object v1, p0, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$MyHandler;->this$0:Lorg/chromium/android_webview/AwContentsClientCallbackHelper;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    # setter for: Lorg/chromium/android_webview/AwContentsClientCallbackHelper;->mLastPictureTime:J
    invoke-static {v1, v2, v3}, Lorg/chromium/android_webview/AwContentsClientCallbackHelper;->access$102(Lorg/chromium/android_webview/AwContentsClientCallbackHelper;J)J

    .line 136
    iget-object v1, p0, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$MyHandler;->this$0:Lorg/chromium/android_webview/AwContentsClientCallbackHelper;

    const/4 v2, 0x0

    # setter for: Lorg/chromium/android_webview/AwContentsClientCallbackHelper;->mHasPendingOnNewPicture:Z
    invoke-static {v1, v2}, Lorg/chromium/android_webview/AwContentsClientCallbackHelper;->access$202(Lorg/chromium/android_webview/AwContentsClientCallbackHelper;Z)Z

    goto :goto_0

    .line 131
    .end local v11    # "picture":Landroid/graphics/Picture;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error getting picture"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_6
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    .line 141
    .local v10, "oldScale":F
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    .line 142
    .local v9, "newScale":F
    iget-object v1, p0, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$MyHandler;->this$0:Lorg/chromium/android_webview/AwContentsClientCallbackHelper;

    # getter for: Lorg/chromium/android_webview/AwContentsClientCallbackHelper;->mContentsClient:Lorg/chromium/android_webview/AwContentsClient;
    invoke-static {v1}, Lorg/chromium/android_webview/AwContentsClientCallbackHelper;->access$000(Lorg/chromium/android_webview/AwContentsClientCallbackHelper;)Lorg/chromium/android_webview/AwContentsClient;

    move-result-object v1

    invoke-virtual {v1, v10, v9}, Lorg/chromium/android_webview/AwContentsClient;->onScaleChangedScaled(FF)V

    goto/16 :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
