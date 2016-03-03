.class public Lcom/android/org/chromium/base/library_loader/NativeLibraries;
.super Ljava/lang/Object;
.source "NativeLibraries.java"


# static fields
.field static final LIBRARIES:[Ljava/lang/String;

.field public static sEnableLinkerTests:Z

.field public static sUseLibraryInZipFile:Z

.field public static sUseLinker:Z

.field static sVersionNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 13
    sput-boolean v2, Lcom/android/org/chromium/base/library_loader/NativeLibraries;->sUseLinker:Z

    .line 17
    sput-boolean v2, Lcom/android/org/chromium/base/library_loader/NativeLibraries;->sUseLibraryInZipFile:Z

    .line 21
    sput-boolean v2, Lcom/android/org/chromium/base/library_loader/NativeLibraries;->sEnableLinkerTests:Z

    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "webviewchromium"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/org/chromium/base/library_loader/NativeLibraries;->LIBRARIES:[Ljava/lang/String;

    .line 31
    const-string v0, ""

    sput-object v0, Lcom/android/org/chromium/base/library_loader/NativeLibraries;->sVersionNumber:Ljava/lang/String;

    return-void
.end method
