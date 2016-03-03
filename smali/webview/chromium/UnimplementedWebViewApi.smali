.class public Lwebview/chromium/UnimplementedWebViewApi;
.super Ljava/lang/Object;
.source "UnimplementedWebViewApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwebview/chromium/UnimplementedWebViewApi$UnimplementedWebViewApiException;
    }
.end annotation


# static fields
.field private static FULL_TRACE:Z

.field private static TAG:Ljava/lang/String;

.field private static THROW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    const-string v0, "UnimplementedWebViewApi"

    sput-object v0, Lwebview/chromium/UnimplementedWebViewApi;->TAG:Ljava/lang/String;

    .line 31
    sput-boolean v1, Lwebview/chromium/UnimplementedWebViewApi;->THROW:Z

    .line 34
    sput-boolean v1, Lwebview/chromium/UnimplementedWebViewApi;->FULL_TRACE:Z

    return-void
.end method

.method public static invoke()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lwebview/chromium/UnimplementedWebViewApi$UnimplementedWebViewApiException;
        }
    .end annotation

    .prologue
    .line 37
    sget-boolean v3, Lwebview/chromium/UnimplementedWebViewApi;->THROW:Z

    if-eqz v3, :cond_0

    .line 38
    new-instance v3, Lwebview/chromium/UnimplementedWebViewApi$UnimplementedWebViewApiException;

    invoke-direct {v3}, Lwebview/chromium/UnimplementedWebViewApi$UnimplementedWebViewApiException;-><init>()V

    throw v3

    .line 40
    :cond_0
    sget-boolean v3, Lwebview/chromium/UnimplementedWebViewApi;->FULL_TRACE:Z

    if-eqz v3, :cond_1

    .line 41
    sget-object v3, Lwebview/chromium/UnimplementedWebViewApi;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unimplemented WebView method called in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .local v0, "caller":Ljava/lang/StackTraceElement;
    .local v1, "trace":[Ljava/lang/StackTraceElement;
    .local v2, "unimplementedMethod":Ljava/lang/StackTraceElement;
    :goto_0
    return-void

    .line 44
    .end local v0    # "caller":Ljava/lang/StackTraceElement;
    .end local v1    # "trace":[Ljava/lang/StackTraceElement;
    .end local v2    # "unimplementedMethod":Ljava/lang/StackTraceElement;
    :cond_1
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 46
    .restart local v1    # "trace":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x1

    aget-object v2, v1, v3

    .line 47
    .restart local v2    # "unimplementedMethod":Ljava/lang/StackTraceElement;
    const/4 v3, 0x2

    aget-object v0, v1, v3

    .line 48
    .restart local v0    # "caller":Ljava/lang/StackTraceElement;
    sget-object v3, Lwebview/chromium/UnimplementedWebViewApi;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unimplemented WebView method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " called from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
