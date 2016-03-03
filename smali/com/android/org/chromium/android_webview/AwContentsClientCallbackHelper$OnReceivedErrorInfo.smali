.class Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$OnReceivedErrorInfo;
.super Ljava/lang/Object;
.source "AwContentsClientCallbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnReceivedErrorInfo"
.end annotation


# instance fields
.field final mDescription:Ljava/lang/String;

.field final mErrorCode:I

.field final mFailingUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$OnReceivedErrorInfo;->mErrorCode:I

    .line 68
    iput-object p2, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$OnReceivedErrorInfo;->mDescription:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/android/org/chromium/android_webview/AwContentsClientCallbackHelper$OnReceivedErrorInfo;->mFailingUrl:Ljava/lang/String;

    .line 70
    return-void
.end method
