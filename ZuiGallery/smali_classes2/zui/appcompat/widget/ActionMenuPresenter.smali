.class public Lzui/appcompat/widget/ActionMenuPresenter;
.super Lzui/util/ReflectClass;
.source "ActionMenuPresenter.java"


# static fields
.field private static mInstance:Lzui/appcompat/widget/ActionMenuPresenter;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lzui/appcompat/widget/ActionMenuPresenter;

    invoke-direct {v0}, Lzui/appcompat/widget/ActionMenuPresenter;-><init>()V

    sput-object v0, Lzui/appcompat/widget/ActionMenuPresenter;->mInstance:Lzui/appcompat/widget/ActionMenuPresenter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "androidx.appcompat.widget.ActionMenuPresenter"

    .line 33
    invoke-direct {p0, v0}, Lzui/util/ReflectClass;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setParentContext(Landroid/content/Context;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lzui/appcompat/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setRealObject(Ljava/lang/Object;)V
    .locals 1

    .line 38
    sget-object v0, Lzui/appcompat/widget/ActionMenuPresenter;->mInstance:Lzui/appcompat/widget/ActionMenuPresenter;

    iput-object p1, v0, Lzui/appcompat/widget/ActionMenuPresenter;->mRealObject:Ljava/lang/Object;

    return-void
.end method

.method public updateZuiStyle()V
    .locals 3

    .line 46
    sget-object v0, Lzui/appcompat/widget/ActionMenuPresenter;->mInstance:Lzui/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 47
    sget v1, Lzui/platform/R$layout;->action_menu_item_layout_zui:I

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mItemLayoutRes"

    .line 47
    invoke-virtual {v0, v2, v1}, Lzui/appcompat/widget/ActionMenuPresenter;->setSupperClassConstValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
