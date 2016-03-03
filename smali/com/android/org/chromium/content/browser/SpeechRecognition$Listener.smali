.class Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;
.super Ljava/lang/Object;
.source "SpeechRecognition.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/content/browser/SpeechRecognition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Listener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/content/browser/SpeechRecognition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/android/org/chromium/content/browser/SpeechRecognition;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/org/chromium/content/browser/SpeechRecognition;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;->this$0:Lcom/android/org/chromium/content/browser/SpeechRecognition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleResults(Landroid/os/Bundle;Z)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "provisional"    # Z

    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;->this$0:Lcom/android/org/chromium/content/browser/SpeechRecognition;

    # getter for: Lcom/android/org/chromium/content/browser/SpeechRecognition;->mContinuous:Z
    invoke-static {v1}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->access$300(Lcom/android/org/chromium/content/browser/SpeechRecognition;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 155
    const/4 p2, 0x0

    .line 158
    :cond_0
    const-string v1, "results_recognition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 160
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 162
    .local v4, "results":[Ljava/lang/String;
    const-string v1, "confidence_scores"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v5

    .line 164
    .local v5, "scores":[F
    iget-object v1, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;->this$0:Lcom/android/org/chromium/content/browser/SpeechRecognition;

    iget-object v2, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;->this$0:Lcom/android/org/chromium/content/browser/SpeechRecognition;

    # getter for: Lcom/android/org/chromium/content/browser/SpeechRecognition;->mNativeSpeechRecognizerImplAndroid:J
    invoke-static {v2}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->access$100(Lcom/android/org/chromium/content/browser/SpeechRecognition;)J

    move-result-wide v2

    move v6, p2

    # invokes: Lcom/android/org/chromium/content/browser/SpeechRecognition;->nativeOnRecognitionResults(J[Ljava/lang/String;[FZ)V
    invoke-static/range {v1 .. v6}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->access$800(Lcom/android/org/chromium/content/browser/SpeechRecognition;J[Ljava/lang/String;[FZ)V

    .line 168
    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;->this$0:Lcom/android/org/chromium/content/browser/SpeechRecognition;

    const/4 v1, 0x2

    # setter for: Lcom/android/org/chromium/content/browser/SpeechRecognition;->mState:I
    invoke-static {v0, v1}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->access$002(Lcom/android/org/chromium/content/browser/SpeechRecognition;I)I

    .line 69
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;->this$0:Lcom/android/org/chromium/content/browser/SpeechRecognition;

    iget-object v1, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;->this$0:Lcom/android/org/chromium/content/browser/SpeechRecognition;

    # getter for: Lcom/android/org/chromium/content/browser/SpeechRecognition;->mNativeSpeechRecognizerImplAndroid:J
    invoke-static {v1}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->access$100(Lcom/android/org/chromium/content/browser/SpeechRecognition;)J

    move-result-wide v2

    # invokes: Lcom/android/org/chromium/content/browser/SpeechRecognition;->nativeOnSoundStart(J)V
    invoke-static {v0, v2, v3}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->access$200(Lcom/android/org/chromium/content/browser/SpeechRecognition;J)V

    .line 70
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0
    .param p1, "buffer"    # [B

    .prologue
    .line 73
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;->this$0:Lcom/android/org/chromium/content/browser/SpeechRecognition;

    # getter for: Lcom/android/org/chromium/content/browser/SpeechRecognition;->mContinuous:Z
    invoke-static {v0}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->access$300(Lcom/android/org/chromium/content/browser/SpeechRecognition;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;->this$0:Lcom/android/org/chromium/content/browser/SpeechRecognition;

    iget-object v1, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;->this$0:Lcom/android/org/chromium/content/browser/SpeechRecognition;

    # getter for: Lcom/android/org/chromium/content/browser/SpeechRecognition;->mNativeSpeechRecognizerImplAndroid:J
    invoke-static {v1}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->access$100(Lcom/android/org/chromium/content/browser/SpeechRecognition;)J

    move-result-wide v2

    # invokes: Lcom/android/org/chromium/content/browser/SpeechRecognition;->nativeOnSoundEnd(J)V
    invoke-static {v0, v2, v3}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->access$400(Lcom/android/org/chromium/content/browser/SpeechRecognition;J)V

    .line 86
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;->this$0:Lcom/android/org/chromium/content/browser/SpeechRecognition;

    iget-object v1, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;->this$0:Lcom/android/org/chromium/content/browser/SpeechRecognition;

    # getter for: Lcom/android/org/chromium/content/browser/SpeechRecognition;->mNativeSpeechRecognizerImplAndroid:J
    invoke-static {v1}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->access$100(Lcom/android/org/chromium/content/browser/SpeechRecognition;)J

    move-result-wide v2

    # invokes: Lcom/android/org/chromium/content/browser/SpeechRecognition;->nativeOnAudioEnd(J)V
    invoke-static {v0, v2, v3}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->access$500(Lcom/android/org/chromium/content/browser/SpeechRecognition;J)V

    .line 87
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;->this$0:Lcom/android/org/chromium/content/browser/SpeechRecognition;

    const/4 v1, 0x0

    # setter for: Lcom/android/org/chromium/content/browser/SpeechRecognition;->mState:I
    invoke-static {v0, v1}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->access$002(Lcom/android/org/chromium/content/browser/SpeechRecognition;I)I

    .line 89
    :cond_0
    return-void
.end method

.method public onError(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 96
    .local v0, "code":I
    packed-switch p1, :pswitch_data_0

    .line 119
    sget-boolean v1, Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 98
    :pswitch_0
    const/4 v0, 0x2

    .line 123
    :goto_0
    iget-object v1, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;->this$0:Lcom/android/org/chromium/content/browser/SpeechRecognition;

    # invokes: Lcom/android/org/chromium/content/browser/SpeechRecognition;->terminate(I)V
    invoke-static {v1, v0}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->access$600(Lcom/android/org/chromium/content/browser/SpeechRecognition;I)V

    .line 124
    :cond_0
    return-void

    .line 101
    :pswitch_1
    const/4 v0, 0x1

    .line 102
    goto :goto_0

    .line 105
    :pswitch_2
    const/4 v0, 0x4

    .line 106
    goto :goto_0

    .line 110
    :pswitch_3
    const/4 v0, 0x3

    .line 111
    goto :goto_0

    .line 113
    :pswitch_4
    const/4 v0, 0x6

    .line 114
    goto :goto_0

    .line 116
    :pswitch_5
    const/4 v0, 0x5

    .line 117
    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 127
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;->handleResults(Landroid/os/Bundle;Z)V

    .line 132
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;->this$0:Lcom/android/org/chromium/content/browser/SpeechRecognition;

    const/4 v1, 0x1

    # setter for: Lcom/android/org/chromium/content/browser/SpeechRecognition;->mState:I
    invoke-static {v0, v1}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->access$002(Lcom/android/org/chromium/content/browser/SpeechRecognition;I)I

    .line 137
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;->this$0:Lcom/android/org/chromium/content/browser/SpeechRecognition;

    iget-object v1, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;->this$0:Lcom/android/org/chromium/content/browser/SpeechRecognition;

    # getter for: Lcom/android/org/chromium/content/browser/SpeechRecognition;->mNativeSpeechRecognizerImplAndroid:J
    invoke-static {v1}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->access$100(Lcom/android/org/chromium/content/browser/SpeechRecognition;)J

    move-result-wide v2

    # invokes: Lcom/android/org/chromium/content/browser/SpeechRecognition;->nativeOnAudioStart(J)V
    invoke-static {v0, v2, v3}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->access$700(Lcom/android/org/chromium/content/browser/SpeechRecognition;J)V

    .line 138
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0, p1, v1}, Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;->handleResults(Landroid/os/Bundle;Z)V

    .line 146
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;->this$0:Lcom/android/org/chromium/content/browser/SpeechRecognition;

    # invokes: Lcom/android/org/chromium/content/browser/SpeechRecognition;->terminate(I)V
    invoke-static {v0, v1}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->access$600(Lcom/android/org/chromium/content/browser/SpeechRecognition;I)V

    .line 147
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 0
    .param p1, "rms"    # F

    .prologue
    .line 150
    return-void
.end method
