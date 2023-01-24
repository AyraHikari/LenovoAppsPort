.class Lcom/zui/internal/app/MessageController$GroupItem$Item;
.super Ljava/lang/Object;
.source "MessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/internal/app/MessageController$GroupItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mMessage:Ljava/lang/CharSequence;

.field public mTitle:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/zui/internal/app/MessageController$GroupItem;


# direct methods
.method public constructor <init>(Lcom/zui/internal/app/MessageController$GroupItem;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1120
    iput-object p1, p0, Lcom/zui/internal/app/MessageController$GroupItem$Item;->this$0:Lcom/zui/internal/app/MessageController$GroupItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1121
    iput-object p2, p0, Lcom/zui/internal/app/MessageController$GroupItem$Item;->mTitle:Ljava/lang/CharSequence;

    .line 1122
    iput-object p3, p0, Lcom/zui/internal/app/MessageController$GroupItem$Item;->mMessage:Ljava/lang/CharSequence;

    .line 1123
    iput-object p4, p0, Lcom/zui/internal/app/MessageController$GroupItem$Item;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
