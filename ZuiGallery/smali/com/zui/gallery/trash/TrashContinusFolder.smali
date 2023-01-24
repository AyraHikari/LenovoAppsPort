.class public Lcom/zui/gallery/trash/TrashContinusFolder;
.super Ljava/lang/Object;
.source "TrashContinusFolder.java"


# instance fields
.field name:Ljava/lang/String;

.field subItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/zui/gallery/trash/TrashContinusFolder;->name:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/zui/gallery/trash/TrashContinusFolder;->subItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/zui/gallery/trash/TrashContinusFolder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSubItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/zui/gallery/trash/TrashContinusFolder;->subItems:Ljava/util/List;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/zui/gallery/trash/TrashContinusFolder;->name:Ljava/lang/String;

    return-void
.end method

.method public setSubItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/gallery/trash/TrashItem;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/zui/gallery/trash/TrashContinusFolder;->subItems:Ljava/util/List;

    return-void
.end method
