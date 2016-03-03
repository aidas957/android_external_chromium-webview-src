.class public Lcom/android/org/chromium/content/browser/SpeechRecognition;
.super Ljava/lang/Object;
.source "SpeechRecognition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;
    }
.end annotation


# static fields
.field private static sRecognitionProvider:Landroid/content/ComponentName;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mContinuous:Z

.field private final mIntent:Landroid/content/Intent;

.field private final mListener:Landroid/speech/RecognitionListener;

.field private mNativeSpeechRecognizerImplAndroid:J

.field private mRecognizer:Landroid/speech/SpeechRecognizer;

.field private mState:I


# direct methods
.method private constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nativeSpeechRecognizerImplAndroid"    # J

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p1, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mContext:Landroid/content/Context;

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mContinuous:Z

    .line 212
    iput-wide p2, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mNativeSpeechRecognizerImplAndroid:J

    .line 213
    new-instance v0, Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;

    invoke-direct {v0, p0}, Lcom/android/org/chromium/content/browser/SpeechRecognition$Listener;-><init>(Lcom/android/org/chromium/content/browser/SpeechRecognition;)V

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mListener:Landroid/speech/RecognitionListener;

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mIntent:Landroid/content/Intent;

    .line 216
    sget-object v0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->sRecognitionProvider:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/org/chromium/content/browser/SpeechRecognition;->sRecognitionProvider:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mRecognizer:Landroid/speech/SpeechRecognizer;

    .line 226
    :goto_0
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v1, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mListener:Landroid/speech/RecognitionListener;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 227
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mRecognizer:Landroid/speech/SpeechRecognizer;

    goto :goto_0
.end method

.method private abortRecognition()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 274
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->terminate(I)V

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/org/chromium/content/browser/SpeechRecognition;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/org/chromium/content/browser/SpeechRecognition;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/org/chromium/content/browser/SpeechRecognition;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/org/chromium/content/browser/SpeechRecognition;

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mNativeSpeechRecognizerImplAndroid:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/org/chromium/content/browser/SpeechRecognition;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/content/browser/SpeechRecognition;
    .param p1, "x1"    # J

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->nativeOnSoundStart(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/org/chromium/content/browser/SpeechRecognition;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/content/browser/SpeechRecognition;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mContinuous:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/org/chromium/content/browser/SpeechRecognition;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/content/browser/SpeechRecognition;
    .param p1, "x1"    # J

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->nativeOnSoundEnd(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/org/chromium/content/browser/SpeechRecognition;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/content/browser/SpeechRecognition;
    .param p1, "x1"    # J

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->nativeOnAudioEnd(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/org/chromium/content/browser/SpeechRecognition;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/org/chromium/content/browser/SpeechRecognition;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->terminate(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/org/chromium/content/browser/SpeechRecognition;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/content/browser/SpeechRecognition;
    .param p1, "x1"    # J

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->nativeOnAudioStart(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/org/chromium/content/browser/SpeechRecognition;J[Ljava/lang/String;[FZ)V
    .locals 1
    .param p0, "x0"    # Lcom/android/org/chromium/content/browser/SpeechRecognition;
    .param p1, "x1"    # J
    .param p3, "x2"    # [Ljava/lang/String;
    .param p4, "x3"    # [F
    .param p5, "x4"    # Z

    .prologue
    .line 33
    invoke-direct/range {p0 .. p5}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->nativeOnRecognitionResults(J[Ljava/lang/String;[FZ)V

    return-void
.end method

.method private static createSpeechRecognition(Landroid/content/Context;J)Lcom/android/org/chromium/content/browser/SpeechRecognition;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nativeSpeechRecognizerImplAndroid"    # J

    .prologue
    .line 253
    new-instance v0, Lcom/android/org/chromium/content/browser/SpeechRecognition;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/org/chromium/content/browser/SpeechRecognition;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method private native nativeOnAudioEnd(J)V
.end method

.method private native nativeOnAudioStart(J)V
.end method

.method private native nativeOnRecognitionEnd(J)V
.end method

.method private native nativeOnRecognitionError(JI)V
.end method

.method private native nativeOnRecognitionResults(J[Ljava/lang/String;[FZ)V
.end method

.method private native nativeOnSoundEnd(J)V
.end method

.method private native nativeOnSoundStart(J)V
.end method

.method private startRecognition(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "continuous"    # Z
    .param p3, "interimResults"    # Z

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 261
    :cond_0
    iput-boolean p2, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mContinuous:Z

    .line 262
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.DICTATION_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.LANGUAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 265
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v1, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private stopRecognition()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mContinuous:Z

    .line 283
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    goto :goto_0
.end method

.method private terminate(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 233
    iget v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mState:I

    if-eqz v0, :cond_1

    .line 234
    iget v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 235
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mNativeSpeechRecognizerImplAndroid:J

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->nativeOnSoundEnd(J)V

    .line 237
    :cond_0
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mNativeSpeechRecognizerImplAndroid:J

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->nativeOnAudioEnd(J)V

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mState:I

    .line 241
    :cond_1
    if-eqz p1, :cond_2

    .line 242
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mNativeSpeechRecognizerImplAndroid:J

    invoke-direct {p0, v0, v1, p1}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->nativeOnRecognitionError(JI)V

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mRecognizer:Landroid/speech/SpeechRecognizer;

    .line 246
    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mNativeSpeechRecognizerImplAndroid:J

    invoke-direct {p0, v0, v1}, Lcom/android/org/chromium/content/browser/SpeechRecognition;->nativeOnRecognitionEnd(J)V

    .line 247
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/org/chromium/content/browser/SpeechRecognition;->mNativeSpeechRecognizerImplAndroid:J

    .line 248
    return-void
.end method
