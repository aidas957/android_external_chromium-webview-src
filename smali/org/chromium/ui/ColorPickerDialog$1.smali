.class Lorg/chromium/ui/ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/ui/ColorPickerDialog;-><init>(Landroid/content/Context;Lorg/chromium/ui/OnColorChangedListener;I[Lorg/chromium/ui/ColorSuggestion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/ColorPickerDialog;


# direct methods
.method constructor <init>(Lorg/chromium/ui/ColorPickerDialog;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lorg/chromium/ui/ColorPickerDialog$1;->this$0:Lorg/chromium/ui/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lorg/chromium/ui/ColorPickerDialog$1;->this$0:Lorg/chromium/ui/ColorPickerDialog;

    iget-object v1, p0, Lorg/chromium/ui/ColorPickerDialog$1;->this$0:Lorg/chromium/ui/ColorPickerDialog;

    # getter for: Lorg/chromium/ui/ColorPickerDialog;->mCurrentColor:I
    invoke-static {v1}, Lorg/chromium/ui/ColorPickerDialog;->access$000(Lorg/chromium/ui/ColorPickerDialog;)I

    move-result v1

    # invokes: Lorg/chromium/ui/ColorPickerDialog;->tryNotifyColorSet(I)V
    invoke-static {v0, v1}, Lorg/chromium/ui/ColorPickerDialog;->access$100(Lorg/chromium/ui/ColorPickerDialog;I)V

    .line 70
    return-void
.end method
