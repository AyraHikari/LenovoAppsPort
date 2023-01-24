.class Lcom/zui/internal/app/MessageController$GroupItem;
.super Ljava/lang/Object;
.source "MessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/internal/app/MessageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/internal/app/MessageController$GroupItem$Item;
    }
.end annotation


# instance fields
.field public mGroupId:I

.field public mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/internal/app/MessageController$GroupItem$Item;",
            ">;"
        }
    .end annotation
.end field

.field public mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 1127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1128
    iput-object p1, p0, Lcom/zui/internal/app/MessageController$GroupItem;->mTitle:Ljava/lang/CharSequence;

    .line 1129
    iput p2, p0, Lcom/zui/internal/app/MessageController$GroupItem;->mGroupId:I

    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1133
    iget-object v0, p0, Lcom/zui/internal/app/MessageController$GroupItem;->mItemList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/internal/app/MessageController$GroupItem;->mItemList:Ljava/util/List;

    .line 1136
    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/MessageController$GroupItem;->mItemList:Ljava/util/List;

    new-instance v1, Lcom/zui/internal/app/MessageController$GroupItem$Item;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/zui/internal/app/MessageController$GroupItem$Item;-><init>(Lcom/zui/internal/app/MessageController$GroupItem;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
