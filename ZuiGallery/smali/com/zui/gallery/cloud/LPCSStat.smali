.class public final enum Lcom/zui/gallery/cloud/LPCSStat;
.super Ljava/lang/Enum;
.source "LPCSStat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/gallery/cloud/LPCSStat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zui/gallery/cloud/LPCSStat;

.field public static final enum STATE_AUTO_SYNC_CLOSE:Lcom/zui/gallery/cloud/LPCSStat;

.field public static final enum STATE_INIT:Lcom/zui/gallery/cloud/LPCSStat;

.field public static final enum STATE_LOGINED:Lcom/zui/gallery/cloud/LPCSStat;

.field public static final enum STATE_NET_BROKEN:Lcom/zui/gallery/cloud/LPCSStat;

.field public static final enum STATE_NO_SPACE:Lcom/zui/gallery/cloud/LPCSStat;

.field public static final enum STATE_SYNCING:Lcom/zui/gallery/cloud/LPCSStat;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 12
    new-instance v0, Lcom/zui/gallery/cloud/LPCSStat;

    const-string v1, "STATE_INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/cloud/LPCSStat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/cloud/LPCSStat;->STATE_INIT:Lcom/zui/gallery/cloud/LPCSStat;

    new-instance v0, Lcom/zui/gallery/cloud/LPCSStat;

    const-string v1, "STATE_LOGINED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zui/gallery/cloud/LPCSStat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/cloud/LPCSStat;->STATE_LOGINED:Lcom/zui/gallery/cloud/LPCSStat;

    new-instance v0, Lcom/zui/gallery/cloud/LPCSStat;

    const-string v1, "STATE_AUTO_SYNC_CLOSE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zui/gallery/cloud/LPCSStat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/cloud/LPCSStat;->STATE_AUTO_SYNC_CLOSE:Lcom/zui/gallery/cloud/LPCSStat;

    new-instance v0, Lcom/zui/gallery/cloud/LPCSStat;

    const-string v1, "STATE_SYNCING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/zui/gallery/cloud/LPCSStat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/cloud/LPCSStat;->STATE_SYNCING:Lcom/zui/gallery/cloud/LPCSStat;

    new-instance v0, Lcom/zui/gallery/cloud/LPCSStat;

    const-string v1, "STATE_NO_SPACE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/zui/gallery/cloud/LPCSStat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/cloud/LPCSStat;->STATE_NO_SPACE:Lcom/zui/gallery/cloud/LPCSStat;

    new-instance v0, Lcom/zui/gallery/cloud/LPCSStat;

    const-string v1, "STATE_NET_BROKEN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/zui/gallery/cloud/LPCSStat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/cloud/LPCSStat;->STATE_NET_BROKEN:Lcom/zui/gallery/cloud/LPCSStat;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/zui/gallery/cloud/LPCSStat;

    .line 3
    sget-object v8, Lcom/zui/gallery/cloud/LPCSStat;->STATE_INIT:Lcom/zui/gallery/cloud/LPCSStat;

    aput-object v8, v1, v2

    sget-object v2, Lcom/zui/gallery/cloud/LPCSStat;->STATE_LOGINED:Lcom/zui/gallery/cloud/LPCSStat;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/cloud/LPCSStat;->STATE_AUTO_SYNC_CLOSE:Lcom/zui/gallery/cloud/LPCSStat;

    aput-object v2, v1, v4

    sget-object v2, Lcom/zui/gallery/cloud/LPCSStat;->STATE_SYNCING:Lcom/zui/gallery/cloud/LPCSStat;

    aput-object v2, v1, v5

    sget-object v2, Lcom/zui/gallery/cloud/LPCSStat;->STATE_NO_SPACE:Lcom/zui/gallery/cloud/LPCSStat;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/zui/gallery/cloud/LPCSStat;->$VALUES:[Lcom/zui/gallery/cloud/LPCSStat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static value(I)Lcom/zui/gallery/cloud/LPCSStat;
    .locals 1

    .line 15
    sget-object v0, Lcom/zui/gallery/cloud/LPCSStat;->STATE_NET_BROKEN:Lcom/zui/gallery/cloud/LPCSStat;

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/LPCSStat;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 16
    sget-object p0, Lcom/zui/gallery/cloud/LPCSStat;->STATE_NET_BROKEN:Lcom/zui/gallery/cloud/LPCSStat;

    return-object p0

    .line 17
    :cond_0
    sget-object v0, Lcom/zui/gallery/cloud/LPCSStat;->STATE_LOGINED:Lcom/zui/gallery/cloud/LPCSStat;

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/LPCSStat;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_1

    .line 18
    sget-object p0, Lcom/zui/gallery/cloud/LPCSStat;->STATE_LOGINED:Lcom/zui/gallery/cloud/LPCSStat;

    return-object p0

    .line 19
    :cond_1
    sget-object v0, Lcom/zui/gallery/cloud/LPCSStat;->STATE_AUTO_SYNC_CLOSE:Lcom/zui/gallery/cloud/LPCSStat;

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/LPCSStat;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_2

    .line 20
    sget-object p0, Lcom/zui/gallery/cloud/LPCSStat;->STATE_AUTO_SYNC_CLOSE:Lcom/zui/gallery/cloud/LPCSStat;

    return-object p0

    .line 21
    :cond_2
    sget-object v0, Lcom/zui/gallery/cloud/LPCSStat;->STATE_SYNCING:Lcom/zui/gallery/cloud/LPCSStat;

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/LPCSStat;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_3

    .line 22
    sget-object p0, Lcom/zui/gallery/cloud/LPCSStat;->STATE_SYNCING:Lcom/zui/gallery/cloud/LPCSStat;

    return-object p0

    .line 23
    :cond_3
    sget-object v0, Lcom/zui/gallery/cloud/LPCSStat;->STATE_NO_SPACE:Lcom/zui/gallery/cloud/LPCSStat;

    invoke-virtual {v0}, Lcom/zui/gallery/cloud/LPCSStat;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_4

    .line 24
    sget-object p0, Lcom/zui/gallery/cloud/LPCSStat;->STATE_NO_SPACE:Lcom/zui/gallery/cloud/LPCSStat;

    return-object p0

    .line 26
    :cond_4
    sget-object p0, Lcom/zui/gallery/cloud/LPCSStat;->STATE_INIT:Lcom/zui/gallery/cloud/LPCSStat;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/gallery/cloud/LPCSStat;
    .locals 1

    .line 3
    const-class v0, Lcom/zui/gallery/cloud/LPCSStat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/gallery/cloud/LPCSStat;

    return-object p0
.end method

.method public static values()[Lcom/zui/gallery/cloud/LPCSStat;
    .locals 1

    .line 3
    sget-object v0, Lcom/zui/gallery/cloud/LPCSStat;->$VALUES:[Lcom/zui/gallery/cloud/LPCSStat;

    invoke-virtual {v0}, [Lcom/zui/gallery/cloud/LPCSStat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/gallery/cloud/LPCSStat;

    return-object v0
.end method
