.class Lorg/chromium/android_webview/AwContents$2;
.super Ljava/lang/Object;
.source "AwContents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/android_webview/AwContents;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/android_webview/AwContents;


# direct methods
.method constructor <init>(Lorg/chromium/android_webview/AwContents;)V
    .locals 0

    .prologue
    .line 924
    iput-object p1, p0, Lorg/chromium/android_webview/AwContents$2;->this$0:Lorg/chromium/android_webview/AwContents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lorg/chromium/android_webview/AwContents$2;->this$0:Lorg/chromium/android_webview/AwContents;

    # invokes: Lorg/chromium/android_webview/AwContents;->destroyNatives()V
    invoke-static {v0}, Lorg/chromium/android_webview/AwContents;->access$3600(Lorg/chromium/android_webview/AwContents;)V

    .line 928
    return-void
.end method
