.class public final Landroidx/renderscript/Script$FieldID;
.super Landroidx/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldID"
.end annotation


# instance fields
.field mN:Landroid/renderscript/Script$FieldID;

.field mScript:Landroidx/renderscript/Script;

.field mSlot:I


# direct methods
.method constructor <init>(ILandroidx/renderscript/RenderScript;Landroidx/renderscript/Script;I)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Landroidx/renderscript/BaseObj;-><init>(ILandroidx/renderscript/RenderScript;)V

    .line 109
    iput-object p3, p0, Landroidx/renderscript/Script$FieldID;->mScript:Landroidx/renderscript/Script;

    .line 110
    iput p4, p0, Landroidx/renderscript/Script$FieldID;->mSlot:I

    return-void
.end method
