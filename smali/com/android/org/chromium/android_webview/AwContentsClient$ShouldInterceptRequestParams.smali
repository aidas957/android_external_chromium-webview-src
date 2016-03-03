.class public Lcom/android/org/chromium/android_webview/AwContentsClient$ShouldInterceptRequestParams;
.super Ljava/lang/Object;
.source "AwContentsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/android_webview/AwContentsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShouldInterceptRequestParams"
.end annotation


# instance fields
.field public hasUserGesture:Z

.field public isMainFrame:Z

.field public method:Ljava/lang/String;

.field public requestHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
