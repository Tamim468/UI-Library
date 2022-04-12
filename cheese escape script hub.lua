local library = {};

function library.new(name, size)
    local window = {
        name = name or "UI",
        size = Size or UDim2.new(0, 400, 0, 500),
        tabs = {};
    };

    function window:AddTab()
        local tab = { };

        --function tab:AddSection()

        function tab:Init()
            -- Make tab elements etc
        end

        return tab;
    end

    function window:Init()
        window.base = Instance.new("ScreenGui");
        -- Make the rest of the ui

        for _, tab in next, self.tabs do
            tab:Init();
        end
    end

    return window;
end

return library;
