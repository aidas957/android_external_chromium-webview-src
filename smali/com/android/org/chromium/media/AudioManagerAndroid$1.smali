.class Lcom/android/org/chromium/media/AudioManagerAndroid$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioManagerAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/media/AudioManagerAndroid;->registerForWiredHeadsetIntentBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/media/AudioManagerAndroid;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/media/AudioManagerAndroid;)V
    .locals 0

    .prologue
    .line 696
    iput-object p1, p0, Lcom/android/org/chromium/media/AudioManagerAndroid$1;->this$0:Lcom/android/org/chromium/media/AudioManagerAndroid;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 704
    const-string v1, "state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 714
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 732
    const-string v1, "Invalid state"

    # invokes: Lcom/android/org/chromium/media/AudioManagerAndroid;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/org/chromium/media/AudioManagerAndroid;->access$400(Ljava/lang/String;)V

    .line 738
    :goto_0
    iget-object v1, p0, Lcom/android/org/chromium/media/AudioManagerAndroid$1;->this$0:Lcom/android/org/chromium/media/AudioManagerAndroid;

    # invokes: Lcom/android/org/chromium/media/AudioManagerAndroid;->deviceHasBeenRequested()Z
    invoke-static {v1}, Lcom/android/org/chromium/media/AudioManagerAndroid;->access$500(Lcom/android/org/chromium/media/AudioManagerAndroid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    iget-object v1, p0, Lcom/android/org/chromium/media/AudioManagerAndroid$1;->this$0:Lcom/android/org/chromium/media/AudioManagerAndroid;

    # invokes: Lcom/android/org/chromium/media/AudioManagerAndroid;->updateDeviceActivation()V
    invoke-static {v1}, Lcom/android/org/chromium/media/AudioManagerAndroid;->access$600(Lcom/android/org/chromium/media/AudioManagerAndroid;)V

    .line 743
    :cond_0
    return-void

    .line 716
    :pswitch_0
    iget-object v1, p0, Lcom/android/org/chromium/media/AudioManagerAndroid$1;->this$0:Lcom/android/org/chromium/media/AudioManagerAndroid;

    # getter for: Lcom/android/org/chromium/media/AudioManagerAndroid;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/org/chromium/media/AudioManagerAndroid;->access$100(Lcom/android/org/chromium/media/AudioManagerAndroid;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 718
    :try_start_0
    iget-object v1, p0, Lcom/android/org/chromium/media/AudioManagerAndroid$1;->this$0:Lcom/android/org/chromium/media/AudioManagerAndroid;

    # getter for: Lcom/android/org/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z
    invoke-static {v1}, Lcom/android/org/chromium/media/AudioManagerAndroid;->access$200(Lcom/android/org/chromium/media/AudioManagerAndroid;)[Z

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-boolean v4, v1, v3

    .line 719
    iget-object v1, p0, Lcom/android/org/chromium/media/AudioManagerAndroid$1;->this$0:Lcom/android/org/chromium/media/AudioManagerAndroid;

    # invokes: Lcom/android/org/chromium/media/AudioManagerAndroid;->hasEarpiece()Z
    invoke-static {v1}, Lcom/android/org/chromium/media/AudioManagerAndroid;->access$300(Lcom/android/org/chromium/media/AudioManagerAndroid;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 720
    iget-object v1, p0, Lcom/android/org/chromium/media/AudioManagerAndroid$1;->this$0:Lcom/android/org/chromium/media/AudioManagerAndroid;

    # getter for: Lcom/android/org/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z
    invoke-static {v1}, Lcom/android/org/chromium/media/AudioManagerAndroid;->access$200(Lcom/android/org/chromium/media/AudioManagerAndroid;)[Z

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 722
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 725
    :pswitch_1
    iget-object v1, p0, Lcom/android/org/chromium/media/AudioManagerAndroid$1;->this$0:Lcom/android/org/chromium/media/AudioManagerAndroid;

    # getter for: Lcom/android/org/chromium/media/AudioManagerAndroid;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/org/chromium/media/AudioManagerAndroid;->access$100(Lcom/android/org/chromium/media/AudioManagerAndroid;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 727
    :try_start_1
    iget-object v1, p0, Lcom/android/org/chromium/media/AudioManagerAndroid$1;->this$0:Lcom/android/org/chromium/media/AudioManagerAndroid;

    # getter for: Lcom/android/org/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z
    invoke-static {v1}, Lcom/android/org/chromium/media/AudioManagerAndroid;->access$200(Lcom/android/org/chromium/media/AudioManagerAndroid;)[Z

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    aput-boolean v4, v1, v3

    .line 728
    iget-object v1, p0, Lcom/android/org/chromium/media/AudioManagerAndroid$1;->this$0:Lcom/android/org/chromium/media/AudioManagerAndroid;

    # getter for: Lcom/android/org/chromium/media/AudioManagerAndroid;->mAudioDevices:[Z
    invoke-static {v1}, Lcom/android/org/chromium/media/AudioManagerAndroid;->access$200(Lcom/android/org/chromium/media/AudioManagerAndroid;)[Z

    move-result-object v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-boolean v4, v1, v3

    .line 729
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 714
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
