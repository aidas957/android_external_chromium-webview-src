.class public final Lcom/android/org/chromium/content/browser/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/content/browser/DownloadInfo$1;,
        Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;
    }
.end annotation


# instance fields
.field private final mContentDisposition:Ljava/lang/String;

.field private final mContentLength:J

.field private final mCookie:Ljava/lang/String;

.field private final mDescription:Ljava/lang/String;

.field private final mDownloadId:I

.field private final mFileName:Ljava/lang/String;

.field private final mFilePath:Ljava/lang/String;

.field private final mHasDownloadId:Z

.field private final mHasUserGesture:Z

.field private final mIsGETRequest:Z

.field private final mIsSuccessful:Z

.field private final mMimeType:Ljava/lang/String;

.field private final mPercentCompleted:I

.field private final mReferer:Ljava/lang/String;

.field private final mTimeRemainingInMillis:J

.field private final mUrl:Ljava/lang/String;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    # getter for: Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->mUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->access$000(Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/DownloadInfo;->mUrl:Ljava/lang/String;

    .line 31
    # getter for: Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->mUserAgent:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->access$100(Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/DownloadInfo;->mUserAgent:Ljava/lang/String;

    .line 32
    # getter for: Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->mMimeType:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->access$200(Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/DownloadInfo;->mMimeType:Ljava/lang/String;

    .line 33
    # getter for: Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->mCookie:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->access$300(Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/DownloadInfo;->mCookie:Ljava/lang/String;

    .line 34
    # getter for: Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->mFileName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->access$400(Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/DownloadInfo;->mFileName:Ljava/lang/String;

    .line 35
    # getter for: Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->mDescription:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->access$500(Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/DownloadInfo;->mDescription:Ljava/lang/String;

    .line 36
    # getter for: Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->mFilePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->access$600(Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/DownloadInfo;->mFilePath:Ljava/lang/String;

    .line 37
    # getter for: Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->mReferer:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->access$700(Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/DownloadInfo;->mReferer:Ljava/lang/String;

    .line 38
    # getter for: Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->mContentLength:J
    invoke-static {p1}, Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->access$800(Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/chromium/content/browser/DownloadInfo;->mContentLength:J

    .line 39
    # getter for: Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->mHasDownloadId:Z
    invoke-static {p1}, Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->access$900(Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/chromium/content/browser/DownloadInfo;->mHasDownloadId:Z

    .line 40
    # getter for: Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->mDownloadId:I
    invoke-static {p1}, Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->access$1000(Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/org/chromium/content/browser/DownloadInfo;->mDownloadId:I

    .line 41
    # getter for: Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->mHasUserGesture:Z
    invoke-static {p1}, Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->access$1100(Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/chromium/content/browser/DownloadInfo;->mHasUserGesture:Z

    .line 42
    # getter for: Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->mIsSuccessful:Z
    invoke-static {p1}, Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->access$1200(Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/chromium/content/browser/DownloadInfo;->mIsSuccessful:Z

    .line 43
    # getter for: Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->mIsGETRequest:Z
    invoke-static {p1}, Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->access$1300(Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/chromium/content/browser/DownloadInfo;->mIsGETRequest:Z

    .line 44
    # getter for: Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->mContentDisposition:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->access$1400(Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/chromium/content/browser/DownloadInfo;->mContentDisposition:Ljava/lang/String;

    .line 45
    # getter for: Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->mPercentCompleted:I
    invoke-static {p1}, Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->access$1500(Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/org/chromium/content/browser/DownloadInfo;->mPercentCompleted:I

    .line 46
    # getter for: Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->mTimeRemainingInMillis:J
    invoke-static {p1}, Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;->access$1600(Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/chromium/content/browser/DownloadInfo;->mTimeRemainingInMillis:J

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;Lcom/android/org/chromium/content/browser/DownloadInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;
    .param p2, "x1"    # Lcom/android/org/chromium/content/browser/DownloadInfo$1;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/android/org/chromium/content/browser/DownloadInfo;-><init>(Lcom/android/org/chromium/content/browser/DownloadInfo$Builder;)V

    return-void
.end method
