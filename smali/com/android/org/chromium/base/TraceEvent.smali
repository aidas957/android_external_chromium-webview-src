.class public Lcom/android/org/chromium/base/TraceEvent;
.super Ljava/lang/Object;
.source "TraceEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/base/TraceEvent$1;,
        Lcom/android/org/chromium/base/TraceEvent$LooperMonitorHolder;,
        Lcom/android/org/chromium/base/TraceEvent$IdleTracingLooperMonitor;,
        Lcom/android/org/chromium/base/TraceEvent$BasicLooperMonitor;
    }
.end annotation


# static fields
.field private static volatile sEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/org/chromium/base/TraceEvent;->sEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/android/org/chromium/base/TraceEvent;->sEnabled:Z

    return v0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 20
    invoke-static {}, Lcom/android/org/chromium/base/TraceEvent;->nativeBeginToplevel()V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 20
    invoke-static {}, Lcom/android/org/chromium/base/TraceEvent;->nativeEndToplevel()V

    return-void
.end method

.method public static begin()V
    .locals 2

    .prologue
    .line 289
    sget-boolean v0, Lcom/android/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/org/chromium/base/TraceEvent;->getCallerName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/org/chromium/base/TraceEvent;->nativeBegin(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_0
    return-void
.end method

.method public static begin(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 297
    sget-boolean v0, Lcom/android/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/org/chromium/base/TraceEvent;->nativeBegin(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    return-void
.end method

.method public static begin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 306
    sget-boolean v0, Lcom/android/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/org/chromium/base/TraceEvent;->nativeBegin(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_0
    return-void
.end method

.method public static end()V
    .locals 2

    .prologue
    .line 314
    sget-boolean v0, Lcom/android/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/org/chromium/base/TraceEvent;->getCallerName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/org/chromium/base/TraceEvent;->nativeEnd(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_0
    return-void
.end method

.method public static end(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 322
    sget-boolean v0, Lcom/android/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/org/chromium/base/TraceEvent;->nativeEnd(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_0
    return-void
.end method

.method private static getCallerName()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 346
    .local v0, "stack":[Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static instant(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 220
    sget-boolean v0, Lcom/android/org/chromium/base/TraceEvent;->sEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/org/chromium/base/TraceEvent;->nativeInstant(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_0
    return-void
.end method

.method private static native nativeBegin(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeBeginToplevel()V
.end method

.method private static native nativeEnd(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeEndToplevel()V
.end method

.method private static native nativeFinishAsync(Ljava/lang/String;JLjava/lang/String;)V
.end method

.method private static native nativeInstant(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeRegisterEnabledObserver()V
.end method

.method private static native nativeStartATrace()V
.end method

.method private static native nativeStartAsync(Ljava/lang/String;JLjava/lang/String;)V
.end method

.method private static native nativeStopATrace()V
.end method

.method public static registerNativeEnabledObserver()V
    .locals 0

    .prologue
    .line 170
    invoke-static {}, Lcom/android/org/chromium/base/TraceEvent;->nativeRegisterEnabledObserver()V

    .line 171
    return-void
.end method

.method public static setATraceEnabled(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 189
    sget-boolean v0, Lcom/android/org/chromium/base/TraceEvent;->sEnabled:Z

    if-ne v0, p0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 190
    :cond_0
    if-eqz p0, :cond_1

    .line 191
    invoke-static {}, Lcom/android/org/chromium/base/TraceEvent;->nativeStartATrace()V

    goto :goto_0

    .line 193
    :cond_1
    invoke-static {}, Lcom/android/org/chromium/base/TraceEvent;->nativeStopATrace()V

    goto :goto_0
.end method

.method public static setEnabled(Z)V
    .locals 2
    .param p0, "enabled"    # Z

    .prologue
    .line 178
    sput-boolean p0, Lcom/android/org/chromium/base/TraceEvent;->sEnabled:Z

    .line 179
    invoke-static {}, Lcom/android/org/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz p0, :cond_0

    # getter for: Lcom/android/org/chromium/base/TraceEvent$LooperMonitorHolder;->sInstance:Lcom/android/org/chromium/base/TraceEvent$BasicLooperMonitor;
    invoke-static {}, Lcom/android/org/chromium/base/TraceEvent$LooperMonitorHolder;->access$500()Lcom/android/org/chromium/base/TraceEvent$BasicLooperMonitor;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 181
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
