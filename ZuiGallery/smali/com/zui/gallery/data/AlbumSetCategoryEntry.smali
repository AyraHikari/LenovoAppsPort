.class public Lcom/zui/gallery/data/AlbumSetCategoryEntry;
.super Ljava/lang/Object;
.source "AlbumSetCategoryEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;,
        Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;
    }
.end annotation


# instance fields
.field private final mAlbumEntryID:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

.field private final mAlbumEntryType:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

.field private mCount:I

.field private volatile mIsFold:Z

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->mName:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->mCount:I

    .line 23
    iput-object p3, p0, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->mAlbumEntryType:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    .line 24
    iput-object p4, p0, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->mAlbumEntryID:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    return-void
.end method


# virtual methods
.method public getAlbumEntryID()Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->mAlbumEntryID:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryID;

    return-object v0
.end method

.method public getAlbumEntryType()Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->mAlbumEntryType:Lcom/zui/gallery/data/AlbumSetCategoryEntry$AlbumEntryType;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->mCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isFold()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->mIsFold:Z

    return v0
.end method

.method public setCount(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->mCount:I

    return-void
.end method

.method public setFold(Z)V
    .locals 0

    .line 32
    iget-boolean p1, p0, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->mIsFold:Z

    iput-boolean p1, p0, Lcom/zui/gallery/data/AlbumSetCategoryEntry;->mIsFold:Z

    return-void
.end method
