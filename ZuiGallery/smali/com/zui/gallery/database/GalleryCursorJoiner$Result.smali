.class public final enum Lcom/zui/gallery/database/GalleryCursorJoiner$Result;
.super Ljava/lang/Enum;
.source "GalleryCursorJoiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/database/GalleryCursorJoiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/gallery/database/GalleryCursorJoiner$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

.field public static final enum BOTH:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

.field public static final enum LEFT:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

.field public static final enum RIGHT:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 64
    new-instance v0, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    const-string v1, "RIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;->RIGHT:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    .line 66
    new-instance v0, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    const-string v1, "LEFT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;->LEFT:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    .line 68
    new-instance v0, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    const-string v1, "BOTH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;->BOTH:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    .line 62
    sget-object v5, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;->RIGHT:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    aput-object v5, v1, v2

    sget-object v2, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;->LEFT:Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;->$VALUES:[Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/gallery/database/GalleryCursorJoiner$Result;
    .locals 1

    .line 62
    const-class v0, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    return-object p0
.end method

.method public static values()[Lcom/zui/gallery/database/GalleryCursorJoiner$Result;
    .locals 1

    .line 62
    sget-object v0, Lcom/zui/gallery/database/GalleryCursorJoiner$Result;->$VALUES:[Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    invoke-virtual {v0}, [Lcom/zui/gallery/database/GalleryCursorJoiner$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/gallery/database/GalleryCursorJoiner$Result;

    return-object v0
.end method
