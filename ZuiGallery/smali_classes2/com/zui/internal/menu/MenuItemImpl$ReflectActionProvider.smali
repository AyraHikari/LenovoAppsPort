.class Lcom/zui/internal/menu/MenuItemImpl$ReflectActionProvider;
.super Lzui/util/ReflectClass;
.source "MenuItemImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/internal/menu/MenuItemImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectActionProvider"
.end annotation


# static fields
.field private static mInstance:Lcom/zui/internal/menu/MenuItemImpl$ReflectActionProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 838
    new-instance v0, Lcom/zui/internal/menu/MenuItemImpl$ReflectActionProvider;

    invoke-direct {v0}, Lcom/zui/internal/menu/MenuItemImpl$ReflectActionProvider;-><init>()V

    sput-object v0, Lcom/zui/internal/menu/MenuItemImpl$ReflectActionProvider;->mInstance:Lcom/zui/internal/menu/MenuItemImpl$ReflectActionProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "android.view.ActionProvider"

    .line 841
    invoke-direct {p0, v0}, Lzui/util/ReflectClass;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 5

    .line 850
    iget-object v0, p0, Lcom/zui/internal/menu/MenuItemImpl$ReflectActionProvider;->mRealObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 851
    sget-object v0, Lcom/zui/internal/menu/MenuItemImpl$ReflectActionProvider;->mInstance:Lcom/zui/internal/menu/MenuItemImpl$ReflectActionProvider;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "reset"

    invoke-virtual {v0, v4, v2, v3, v1}, Lcom/zui/internal/menu/MenuItemImpl$ReflectActionProvider;->invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setRealObject(Ljava/lang/Object;)V
    .locals 1

    .line 846
    sget-object v0, Lcom/zui/internal/menu/MenuItemImpl$ReflectActionProvider;->mInstance:Lcom/zui/internal/menu/MenuItemImpl$ReflectActionProvider;

    iput-object p1, v0, Lcom/zui/internal/menu/MenuItemImpl$ReflectActionProvider;->mRealObject:Ljava/lang/Object;

    return-void
.end method
