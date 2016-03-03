.class Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback;
.super Ljava/lang/Object;
.source "AwContents.java"

# interfaces
.implements Landroid/webkit/GeolocationPermissions$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/android_webview/AwContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AwGeolocationCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/android_webview/AwContents;


# direct methods
.method private constructor <init>(Lcom/android/org/chromium/android_webview/AwContents;)V
    .locals 0

    .prologue
    .line 2053
    iput-object p1, p0, Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback;->this$0:Lcom/android/org/chromium/android_webview/AwContents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/chromium/android_webview/AwContents;Lcom/android/org/chromium/android_webview/AwContents$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/org/chromium/android_webview/AwContents;
    .param p2, "x1"    # Lcom/android/org/chromium/android_webview/AwContents$1;

    .prologue
    .line 2053
    invoke-direct {p0, p1}, Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback;-><init>(Lcom/android/org/chromium/android_webview/AwContents;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "allow"    # Z
    .param p3, "retain"    # Z

    .prologue
    .line 2057
    new-instance v0, Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback$1;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback$1;-><init>(Lcom/android/org/chromium/android_webview/AwContents$AwGeolocationCallback;ZZLjava/lang/String;)V

    invoke-static {v0}, Lcom/android/org/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2071
    return-void
.end method
