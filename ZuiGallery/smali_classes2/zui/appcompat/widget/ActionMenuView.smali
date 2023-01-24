.class public Lzui/appcompat/widget/ActionMenuView;
.super Lzui/util/ReflectClass;
.source "ActionMenuView.java"


# static fields
.field private static mInstance:Lzui/appcompat/widget/ActionMenuView;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPresenter:Lzui/appcompat/widget/ActionMenuPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lzui/appcompat/widget/ActionMenuView;

    invoke-direct {v0}, Lzui/appcompat/widget/ActionMenuView;-><init>()V

    sput-object v0, Lzui/appcompat/widget/ActionMenuView;->mInstance:Lzui/appcompat/widget/ActionMenuView;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "androidx.appcompat.widget.ActionMenuView"

    .line 33
    invoke-direct {p0, v0}, Lzui/util/ReflectClass;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private getMenuPresenter()Lzui/appcompat/widget/ActionMenuPresenter;
    .locals 2

    .line 57
    sget-object v0, Lzui/appcompat/widget/ActionMenuView;->mInstance:Lzui/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    const-string v1, "mPresenter"

    invoke-virtual {v0, v1}, Lzui/appcompat/widget/ActionMenuView;->hasHiddenField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lzui/appcompat/widget/ActionMenuView;->mInstance:Lzui/appcompat/widget/ActionMenuView;

    invoke-virtual {v0, v1}, Lzui/appcompat/widget/ActionMenuView;->getHiddenConstObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    new-instance v1, Lzui/appcompat/widget/ActionMenuPresenter;

    invoke-direct {v1}, Lzui/appcompat/widget/ActionMenuPresenter;-><init>()V

    .line 60
    invoke-virtual {v1, v0}, Lzui/appcompat/widget/ActionMenuPresenter;->setRealObject(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lzui/appcompat/widget/ActionMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lzui/appcompat/widget/ActionMenuPresenter;->setParentContext(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public setParentContext(Landroid/content/Context;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lzui/appcompat/widget/ActionMenuView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setRealObject(Ljava/lang/Object;)V
    .locals 1

    .line 38
    sget-object v0, Lzui/appcompat/widget/ActionMenuView;->mInstance:Lzui/appcompat/widget/ActionMenuView;

    iput-object p1, v0, Lzui/appcompat/widget/ActionMenuView;->mRealObject:Ljava/lang/Object;

    return-void
.end method

.method public updateZuiStyle()V
    .locals 1

    .line 46
    iget-object v0, p0, Lzui/appcompat/widget/ActionMenuView;->mPresenter:Lzui/appcompat/widget/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 47
    invoke-direct {p0}, Lzui/appcompat/widget/ActionMenuView;->getMenuPresenter()Lzui/appcompat/widget/ActionMenuPresenter;

    move-result-object v0

    iput-object v0, p0, Lzui/appcompat/widget/ActionMenuView;->mPresenter:Lzui/appcompat/widget/ActionMenuPresenter;

    :cond_0
    return-void
.end method
