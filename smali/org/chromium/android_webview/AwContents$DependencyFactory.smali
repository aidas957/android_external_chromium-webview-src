.class public Lorg/chromium/android_webview/AwContents$DependencyFactory;
.super Ljava/lang/Object;
.source "AwContents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/android_webview/AwContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DependencyFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createLayoutSizer()Lorg/chromium/android_webview/AwLayoutSizer;
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lorg/chromium/android_webview/AwLayoutSizer;

    invoke-direct {v0}, Lorg/chromium/android_webview/AwLayoutSizer;-><init>()V

    return-object v0
.end method

.method public createScrollOffsetManager(Lorg/chromium/android_webview/AwScrollOffsetManager$Delegate;Landroid/widget/OverScroller;)Lorg/chromium/android_webview/AwScrollOffsetManager;
    .locals 1
    .param p1, "delegate"    # Lorg/chromium/android_webview/AwScrollOffsetManager$Delegate;
    .param p2, "overScroller"    # Landroid/widget/OverScroller;

    .prologue
    .line 177
    new-instance v0, Lorg/chromium/android_webview/AwScrollOffsetManager;

    invoke-direct {v0, p1, p2}, Lorg/chromium/android_webview/AwScrollOffsetManager;-><init>(Lorg/chromium/android_webview/AwScrollOffsetManager$Delegate;Landroid/widget/OverScroller;)V

    return-object v0
.end method
