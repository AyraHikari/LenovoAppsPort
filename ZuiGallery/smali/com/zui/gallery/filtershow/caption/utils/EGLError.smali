.class public final enum Lcom/zui/gallery/filtershow/caption/utils/EGLError;
.super Ljava/lang/Enum;
.source "EGLError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/gallery/filtershow/caption/utils/EGLError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zui/gallery/filtershow/caption/utils/EGLError;

.field public static final enum ConfigErr:Lcom/zui/gallery/filtershow/caption/utils/EGLError;

.field public static final enum OK:Lcom/zui/gallery/filtershow/caption/utils/EGLError;


# instance fields
.field code:I

.field msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 9
    new-instance v0, Lcom/zui/gallery/filtershow/caption/utils/EGLError;

    const-string v1, "OK"

    const/4 v2, 0x0

    const-string v3, "ok"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/zui/gallery/filtershow/caption/utils/EGLError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zui/gallery/filtershow/caption/utils/EGLError;->OK:Lcom/zui/gallery/filtershow/caption/utils/EGLError;

    .line 10
    new-instance v0, Lcom/zui/gallery/filtershow/caption/utils/EGLError;

    const-string v1, "ConfigErr"

    const/4 v3, 0x1

    const/16 v4, 0x65

    const-string v5, "config not support"

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/zui/gallery/filtershow/caption/utils/EGLError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/zui/gallery/filtershow/caption/utils/EGLError;->ConfigErr:Lcom/zui/gallery/filtershow/caption/utils/EGLError;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/zui/gallery/filtershow/caption/utils/EGLError;

    .line 7
    sget-object v4, Lcom/zui/gallery/filtershow/caption/utils/EGLError;->OK:Lcom/zui/gallery/filtershow/caption/utils/EGLError;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/zui/gallery/filtershow/caption/utils/EGLError;->$VALUES:[Lcom/zui/gallery/filtershow/caption/utils/EGLError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLError;->code:I

    .line 15
    iput-object p4, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLError;->msg:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/gallery/filtershow/caption/utils/EGLError;
    .locals 1

    .line 7
    const-class v0, Lcom/zui/gallery/filtershow/caption/utils/EGLError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/gallery/filtershow/caption/utils/EGLError;

    return-object p0
.end method

.method public static values()[Lcom/zui/gallery/filtershow/caption/utils/EGLError;
    .locals 1

    .line 7
    sget-object v0, Lcom/zui/gallery/filtershow/caption/utils/EGLError;->$VALUES:[Lcom/zui/gallery/filtershow/caption/utils/EGLError;

    invoke-virtual {v0}, [Lcom/zui/gallery/filtershow/caption/utils/EGLError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/gallery/filtershow/caption/utils/EGLError;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLError;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLError;->code:I

    return v0
.end method
