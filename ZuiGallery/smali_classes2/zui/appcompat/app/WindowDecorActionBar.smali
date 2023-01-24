.class public Lzui/appcompat/app/WindowDecorActionBar;
.super Lzui/util/ReflectClass;
.source "WindowDecorActionBar.java"


# static fields
.field private static mInstance:Lzui/appcompat/app/WindowDecorActionBar;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mToolbarWrapper:Lzui/appcompat/widget/ToolbarWidgetWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lzui/appcompat/app/WindowDecorActionBar;

    invoke-direct {v0}, Lzui/appcompat/app/WindowDecorActionBar;-><init>()V

    sput-object v0, Lzui/appcompat/app/WindowDecorActionBar;->mInstance:Lzui/appcompat/app/WindowDecorActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "androidx.appcompat.app.WindowDecorActionBar"

    .line 35
    invoke-direct {p0, v0}, Lzui/util/ReflectClass;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private getDecorToolbar()Lzui/appcompat/widget/ToolbarWidgetWrapper;
    .locals 2

    .line 59
    sget-object v0, Lzui/appcompat/app/WindowDecorActionBar;->mInstance:Lzui/appcompat/app/WindowDecorActionBar;

    if-eqz v0, :cond_0

    const-string v1, "mDecorToolbar"

    invoke-virtual {v0, v1}, Lzui/appcompat/app/WindowDecorActionBar;->hasHiddenField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lzui/appcompat/app/WindowDecorActionBar;->mInstance:Lzui/appcompat/app/WindowDecorActionBar;

    invoke-virtual {v0, v1}, Lzui/appcompat/app/WindowDecorActionBar;->getHiddenConstObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    new-instance v1, Lzui/appcompat/widget/ToolbarWidgetWrapper;

    invoke-direct {v1}, Lzui/appcompat/widget/ToolbarWidgetWrapper;-><init>()V

    .line 62
    invoke-virtual {v1, v0}, Lzui/appcompat/widget/ToolbarWidgetWrapper;->setRealObject(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lzui/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lzui/appcompat/widget/ToolbarWidgetWrapper;->setParentContext(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public setParentContext(Landroid/content/Context;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lzui/appcompat/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setRealObject(Ljava/lang/Object;)V
    .locals 1

    .line 53
    sget-object v0, Lzui/appcompat/app/WindowDecorActionBar;->mInstance:Lzui/appcompat/app/WindowDecorActionBar;

    iput-object p1, v0, Lzui/appcompat/app/WindowDecorActionBar;->mRealObject:Ljava/lang/Object;

    return-void
.end method

.method public updateToolbar()V
    .locals 1

    .line 43
    iget-object v0, p0, Lzui/appcompat/app/WindowDecorActionBar;->mToolbarWrapper:Lzui/appcompat/widget/ToolbarWidgetWrapper;

    if-nez v0, :cond_0

    .line 44
    invoke-direct {p0}, Lzui/appcompat/app/WindowDecorActionBar;->getDecorToolbar()Lzui/appcompat/widget/ToolbarWidgetWrapper;

    move-result-object v0

    iput-object v0, p0, Lzui/appcompat/app/WindowDecorActionBar;->mToolbarWrapper:Lzui/appcompat/widget/ToolbarWidgetWrapper;

    .line 46
    :cond_0
    iget-object v0, p0, Lzui/appcompat/app/WindowDecorActionBar;->mToolbarWrapper:Lzui/appcompat/widget/ToolbarWidgetWrapper;

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Lzui/appcompat/widget/ToolbarWidgetWrapper;->updateToolbar()V

    :cond_1
    return-void
.end method
