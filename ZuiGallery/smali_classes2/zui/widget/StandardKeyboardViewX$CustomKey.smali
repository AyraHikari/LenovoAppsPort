.class Lzui/widget/StandardKeyboardViewX$CustomKey;
.super Ljava/lang/Object;
.source "StandardKeyboardViewX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/StandardKeyboardViewX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomKey"
.end annotation


# instance fields
.field public customKeyBgColor:I

.field public customKeyTextColor:I

.field public font:Landroid/graphics/Typeface;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public key:Landroid/inputmethodservice/Keyboard$Key;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
