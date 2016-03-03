.class public Lcom/android/org/chromium/content/browser/TracingControllerAndroid;
.super Ljava/lang/Object;
.source "TracingControllerAndroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/content/browser/TracingControllerAndroid$TracingIntentFilter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFilename:Ljava/lang/String;

.field private mIsTracing:Z

.field private mNativeTracingControllerAndroid:J

.field private mShowToasts:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/android/org/chromium/content/browser/TracingControllerAndroid;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/org/chromium/content/browser/TracingControllerAndroid;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static generateTracingFilePath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 126
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "state":Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 128
    const/4 v4, 0x0

    .line 140
    :goto_0
    return-object v4

    .line 133
    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd-HHmmss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 135
    .local v2, "formatter":Ljava/text/SimpleDateFormat;
    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 136
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 138
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chrome-profile-results-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 140
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private logForProfiler(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 266
    const-string v0, "TracingControllerAndroid"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeGetDefaultCategories()Ljava/lang/String;
.end method

.method private native nativeGetKnownCategoryGroupsAsync(J)Z
.end method

.method private native nativeInit()J
.end method

.method private native nativeStartTracing(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeStopTracing(JLjava/lang/String;)V
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/android/org/chromium/content/browser/TracingControllerAndroid;->mShowToasts:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/org/chromium/content/browser/TracingControllerAndroid;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 271
    :cond_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 4

    .prologue
    .line 245
    sget-boolean v0, Lcom/android/org/chromium/content/browser/TracingControllerAndroid;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/org/chromium/content/browser/TracingControllerAndroid;->mNativeTracingControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 246
    :cond_0
    return-void
.end method

.method public isTracing()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/org/chromium/content/browser/TracingControllerAndroid;->mIsTracing:Z

    return v0
.end method

.method protected onTracingStopped()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/android/org/chromium/content/browser/TracingControllerAndroid;->isTracing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const-string v0, "TracingControllerAndroid"

    const-string v1, "Received onTracingStopped, but we aren\'t tracing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    return-void

    .line 225
    :cond_0
    const-string v0, "Profiler finished. Results are in %s."

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/org/chromium/content/browser/TracingControllerAndroid;->mFilename:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/chromium/content/browser/TracingControllerAndroid;->logForProfiler(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/org/chromium/content/browser/TracingControllerAndroid;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/org/chromium/content/R$string;->profiler_stopped_toast:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/org/chromium/content/browser/TracingControllerAndroid;->mFilename:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/chromium/content/browser/TracingControllerAndroid;->showToast(Ljava/lang/String;)V

    .line 227
    iput-boolean v4, p0, Lcom/android/org/chromium/content/browser/TracingControllerAndroid;->mIsTracing:Z

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/TracingControllerAndroid;->mFilename:Ljava/lang/String;

    goto :goto_0
.end method
