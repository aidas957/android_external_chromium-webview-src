.class Lcom/android/org/chromium/media/AudioManagerAndroid$4;
.super Landroid/database/ContentObserver;
.source "AudioManagerAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/media/AudioManagerAndroid;->startObservingVolumeChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/media/AudioManagerAndroid;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/media/AudioManagerAndroid;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/android/org/chromium/media/AudioManagerAndroid$4;->this$0:Lcom/android/org/chromium/media/AudioManagerAndroid;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1077
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1080
    iget-object v2, p0, Lcom/android/org/chromium/media/AudioManagerAndroid$4;->this$0:Lcom/android/org/chromium/media/AudioManagerAndroid;

    # getter for: Lcom/android/org/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/org/chromium/media/AudioManagerAndroid;->access$800(Lcom/android/org/chromium/media/AudioManagerAndroid;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 1081
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Only enable SettingsObserver in COMM mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1089
    :cond_0
    iget-object v2, p0, Lcom/android/org/chromium/media/AudioManagerAndroid$4;->this$0:Lcom/android/org/chromium/media/AudioManagerAndroid;

    # getter for: Lcom/android/org/chromium/media/AudioManagerAndroid;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/org/chromium/media/AudioManagerAndroid;->access$800(Lcom/android/org/chromium/media/AudioManagerAndroid;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 1091
    .local v0, "volume":I
    iget-object v2, p0, Lcom/android/org/chromium/media/AudioManagerAndroid$4;->this$0:Lcom/android/org/chromium/media/AudioManagerAndroid;

    iget-object v3, p0, Lcom/android/org/chromium/media/AudioManagerAndroid$4;->this$0:Lcom/android/org/chromium/media/AudioManagerAndroid;

    # getter for: Lcom/android/org/chromium/media/AudioManagerAndroid;->mNativeAudioManagerAndroid:J
    invoke-static {v3}, Lcom/android/org/chromium/media/AudioManagerAndroid;->access$900(Lcom/android/org/chromium/media/AudioManagerAndroid;)J

    move-result-wide v4

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    # invokes: Lcom/android/org/chromium/media/AudioManagerAndroid;->nativeSetMute(JZ)V
    invoke-static {v2, v4, v5, v1}, Lcom/android/org/chromium/media/AudioManagerAndroid;->access$1000(Lcom/android/org/chromium/media/AudioManagerAndroid;JZ)V

    .line 1092
    return-void
.end method