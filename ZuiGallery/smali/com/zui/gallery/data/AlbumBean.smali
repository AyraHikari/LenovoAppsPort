.class public Lcom/zui/gallery/data/AlbumBean;
.super Ljava/lang/Object;
.source "AlbumBean.java"


# instance fields
.field private alubmName:Ljava/lang/String;

.field private id:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/zui/gallery/data/AlbumBean;->id:I

    .line 17
    iput-object p2, p0, Lcom/zui/gallery/data/AlbumBean;->alubmName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlubmName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/zui/gallery/data/AlbumBean;->alubmName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/zui/gallery/data/AlbumBean;->id:I

    return v0
.end method

.method public setAlubmName(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/zui/gallery/data/AlbumBean;->alubmName:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/zui/gallery/data/AlbumBean;->id:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlbumBean{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/gallery/data/AlbumBean;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alubmName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/gallery/data/AlbumBean;->alubmName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
