.class Lorg/chromium/android_webview/AwContentsClientCallbackHelper$LoginRequestInfo;
.super Ljava/lang/Object;
.source "AwContentsClientCallbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/android_webview/AwContentsClientCallbackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoginRequestInfo"
.end annotation


# instance fields
.field final mAccount:Ljava/lang/String;

.field final mArgs:Ljava/lang/String;

.field final mRealm:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "args"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$LoginRequestInfo;->mRealm:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$LoginRequestInfo;->mAccount:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lorg/chromium/android_webview/AwContentsClientCallbackHelper$LoginRequestInfo;->mArgs:Ljava/lang/String;

    .line 58
    return-void
.end method
