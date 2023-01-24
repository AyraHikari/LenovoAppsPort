.class public final enum Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;
.super Ljava/lang/Enum;
.source "AlbumSetCategoryEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/data/AlbumSetCategoryEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlbumEntryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

.field public static final enum CUSTOM:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

.field public static final enum OTHER:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

.field public static final enum SMART:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

.field public static final enum SYSTEM:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 56
    new-instance v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    const-string v1, "SYSTEM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->SYSTEM:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    .line 57
    new-instance v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    const-string v1, "CUSTOM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->CUSTOM:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    .line 58
    new-instance v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    const-string v1, "SMART"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->SMART:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    .line 59
    new-instance v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    const-string v1, "OTHER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->OTHER:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    .line 55
    sget-object v6, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->SYSTEM:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->CUSTOM:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->SMART:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->$VALUES:[Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;
    .locals 1

    .line 55
    const-class v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    return-object p0
.end method

.method public static values()[Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;
    .locals 1

    .line 55
    sget-object v0, Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->$VALUES:[Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    invoke-virtual {v0}, [Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    return-object v0
.end method
