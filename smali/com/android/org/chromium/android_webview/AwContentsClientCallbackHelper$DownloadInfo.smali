.class Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$DownloadInfo;
.super Ljava/lang/Object;
.source "AwContentsClientCallbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadInfo"
.end annotation


# instance fields
.field final mContentDisposition:Ljava/lang/String;

.field final mContentLength:J

.field final mMimeType:Ljava/lang/String;

.field final mUrl:Ljava/lang/String;

.field final mUserAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$DownloadInfo;->mUrl:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$DownloadInfo;->mUserAgent:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$DownloadInfo;->mContentDisposition:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$DownloadInfo;->mMimeType:Ljava/lang/String;

    .line 45
    iput-wide p5, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$DownloadInfo;->mContentLength:J

    .line 46
    return-void
.end method
