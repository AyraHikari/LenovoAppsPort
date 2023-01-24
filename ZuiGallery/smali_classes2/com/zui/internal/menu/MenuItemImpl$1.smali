.class Lcom/zui/internal/menu/MenuItemImpl$1;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/internal/menu/MenuItemImpl;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/internal/menu/MenuItemImpl;


# direct methods
.method constructor <init>(Lcom/zui/internal/menu/MenuItemImpl;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl$1;->this$0:Lcom/zui/internal/menu/MenuItemImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 1

    .line 738
    iget-object p1, p0, Lcom/zui/internal/menu/MenuItemImpl$1;->this$0:Lcom/zui/internal/menu/MenuItemImpl;

    invoke-static {p1}, Lcom/zui/internal/menu/MenuItemImpl;->access$000(Lcom/zui/internal/menu/MenuItemImpl;)Lcom/zui/internal/menu/MenuBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl$1;->this$0:Lcom/zui/internal/menu/MenuItemImpl;

    invoke-virtual {p1, v0}, Lcom/zui/internal/menu/MenuBuilder;->onItemVisibleChanged(Lcom/zui/internal/menu/MenuItemImpl;)V

    return-void
.end method
