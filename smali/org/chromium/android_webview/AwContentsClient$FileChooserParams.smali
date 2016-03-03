.class public Lorg/chromium/android_webview/AwContentsClient$FileChooserParams;
.super Ljava/lang/Object;
.source "AwContentsClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/android_webview/AwContentsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileChooserParams"
.end annotation


# instance fields
.field public acceptTypes:Ljava/lang/String;

.field public capture:Z

.field public defaultFilename:Ljava/lang/String;

.field public mode:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
