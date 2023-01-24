.class public final enum Landroidx/renderscript/RenderScript$ContextType;
.super Ljava/lang/Enum;
.source "RenderScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/renderscript/RenderScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContextType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/renderscript/RenderScript$ContextType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEBUG:Landroidx/renderscript/RenderScript$ContextType;

.field private static final synthetic ENUM$VALUES:[Landroidx/renderscript/RenderScript$ContextType;

.field public static final enum NORMAL:Landroidx/renderscript/RenderScript$ContextType;

.field public static final enum PROFILE:Landroidx/renderscript/RenderScript$ContextType;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 192
    new-instance v0, Landroidx/renderscript/RenderScript$ContextType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    .line 196
    invoke-direct {v0, v1, v2, v2}, Landroidx/renderscript/RenderScript$ContextType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/renderscript/RenderScript$ContextType;->NORMAL:Landroidx/renderscript/RenderScript$ContextType;

    .line 198
    new-instance v0, Landroidx/renderscript/RenderScript$ContextType;

    const-string v1, "DEBUG"

    const/4 v3, 0x1

    .line 203
    invoke-direct {v0, v1, v3, v3}, Landroidx/renderscript/RenderScript$ContextType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/renderscript/RenderScript$ContextType;->DEBUG:Landroidx/renderscript/RenderScript$ContextType;

    .line 205
    new-instance v0, Landroidx/renderscript/RenderScript$ContextType;

    const-string v1, "PROFILE"

    const/4 v4, 0x2

    .line 210
    invoke-direct {v0, v1, v4, v4}, Landroidx/renderscript/RenderScript$ContextType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/renderscript/RenderScript$ContextType;->PROFILE:Landroidx/renderscript/RenderScript$ContextType;

    const/4 v1, 0x3

    new-array v1, v1, [Landroidx/renderscript/RenderScript$ContextType;

    .line 191
    sget-object v5, Landroidx/renderscript/RenderScript$ContextType;->NORMAL:Landroidx/renderscript/RenderScript$ContextType;

    aput-object v5, v1, v2

    sget-object v2, Landroidx/renderscript/RenderScript$ContextType;->DEBUG:Landroidx/renderscript/RenderScript$ContextType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Landroidx/renderscript/RenderScript$ContextType;->ENUM$VALUES:[Landroidx/renderscript/RenderScript$ContextType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 213
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 214
    iput p3, p0, Landroidx/renderscript/RenderScript$ContextType;->mID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/renderscript/RenderScript$ContextType;
    .locals 1

    .line 1
    const-class v0, Landroidx/renderscript/RenderScript$ContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/renderscript/RenderScript$ContextType;

    return-object p0
.end method

.method public static values()[Landroidx/renderscript/RenderScript$ContextType;
    .locals 4

    .line 1
    sget-object v0, Landroidx/renderscript/RenderScript$ContextType;->ENUM$VALUES:[Landroidx/renderscript/RenderScript$ContextType;

    array-length v1, v0

    new-array v2, v1, [Landroidx/renderscript/RenderScript$ContextType;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
