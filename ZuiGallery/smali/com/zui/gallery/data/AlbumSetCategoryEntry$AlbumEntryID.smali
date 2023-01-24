.class public final enum Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;
.super Ljava/lang/Enum;
.source "AlbumSetCategoryEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/AlbumSetCategoryEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlbumEntryID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

.field public static final enum OTHER:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

.field public static final enum PRIVACY:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

.field public static final enum SYSTEM:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

.field public static final enum TRASH:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 63
    new-instance v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    const-string v1, "SYSTEM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;->SYSTEM:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    .line 64
    new-instance v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    const-string v1, "OTHER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;->OTHER:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    .line 65
    new-instance v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    const-string v1, "PRIVACY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;->PRIVACY:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    .line 66
    new-instance v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    const-string v1, "TRASH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;->TRASH:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    .line 62
    sget-object v6, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;->SYSTEM:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    aput-object v6, v1, v2

    sget-object v2, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;->OTHER:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;->PRIVACY:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;->$VALUES:[Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;
    .locals 1

    .line 62
    const-class v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    return-object p0
.end method

.method public static values()[Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;
    .locals 1

    .line 62
    sget-object v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;->$VALUES:[Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    invoke-virtual {v0}, [Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    return-object v0
.end method
